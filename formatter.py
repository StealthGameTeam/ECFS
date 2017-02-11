import csv
import sys

data = {}
first = True

if len(sys.argv) <= 1:
    print("Please specify file name!")
else:
    with open(sys.argv[1], newline='') as csvfile:
        reader = csv.reader(csvfile, delimiter=',', quotechar='"')
        for row in reader:
            if first:
                first = False
                continue
            variable = str(row[0]).strip(' \t\n\r')
            name = str(row[1]).strip(' \t\n\r')
            action = str(row[2]).strip(' \t\n\r')
            minLikeness = str(row[3]).strip(' \t\n\r')
            maxLikeness = str(row[4]).strip(' \t\n\r')
            minAwkwardness = str(row[5]).strip(' \t\n\r')
            maxAwkwardness = str(row[6]).strip(' \t\n\r')
            minConfidence = str(row[7]).strip(' \t\n\r')
            maxConfidence = str(row[8]).strip(' \t\n\r')
            minCoolness = str(row[9]).strip(' \t\n\r')
            maxCoolness = str(row[10]).strip(' \t\n\r')

            if variable == 'end':
                break

            if len(variable) == 0:
                continue
            elif variable not in data:
                data[variable] = {}
            if 'interests' in action:
                interests = []
                if not (len(minLikeness) == 0):
                    interests.append(minLikeness)
                if not (len(maxLikeness) == 0):
                    interests.append(maxLikeness)
                if not (len(minAwkwardness) == 0):
                    interests.append(minAwkwardness)
                if not (len(maxAwkwardness) == 0):
                    interests.append(maxAwkwardness)
                if not (len(minConfidence) == 0):
                    interests.append(minConfidence)
                if not (len(maxConfidence) == 0):
                    interests.append(maxConfidence)
                if not (len(minCoolness) == 0):
                    interests.append(minCoolness)
                if not (len(maxCoolness) == 0):
                    interests.append(maxCoolness)
                data[variable]['interests'] = interests
            else:
                data[variable]['name'] = name
                data[variable][action] = {}
                if len(minLikeness) != 0:
                    data[variable][action]['like'] = {}
                    data[variable][action]['like']['min'] = minLikeness
                    data[variable][action]['like']['max'] = maxLikeness

                if len(minAwkwardness) != 0:
                    data[variable][action]['awkwardness'] = {}
                    data[variable][action]['awkwardness']['min'] = minAwkwardness
                    data[variable][action]['awkwardness']['max'] = maxAwkwardness

                if len(minConfidence) != 0:
                    data[variable][action]['confidence'] = {}
                    data[variable][action]['confidence']['min'] = minConfidence
                    data[variable][action]['confidence']['max'] = maxConfidence

                if len(minCoolness) != 0:
                    data[variable][action]['coolness'] = {}
                    data[variable][action]['coolness']['min'] = minCoolness
                    data[variable][action]['coolness']['max'] = minCoolness
    print("GIRLS =")
    print("{")
    for girl in data:
        print("  " + girl + " = ")
        print("  {")
        print('    name = "' + data[girl]['name'] + '",')
        for action in data[girl]:
            if 'interests' in action:
                print('    interests = ' + str(data[girl]['interests']).replace(']', '}').replace('[', '{') + ',')
            elif action is 'name' or action is 'variable':
                pass
            elif len(data[girl][action]) != 0:
                print("    " + action + " = {", end='')
                for req in data[girl][action]:
                    print(" " + req + " = { min = " + data[girl][action][req]['min'] + ", max = ",
                          data[girl][action][req]['max'] + " }, ", end='')
                print("}, ")
        print("  },")
    print("}")
