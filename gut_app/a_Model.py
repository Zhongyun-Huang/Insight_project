import pickle
#def ModelIt(fromUser  = 'Default', births = []):
#  in_month = len(births)
#  print 'The number born is %i' % in_month
#  result = in_month
#  if fromUser != 'Default':
#    return result
#  else:
#    return 'check your input'
    
def GutPred():
    return pickle.load(open("fit_models/Random_Forest.pkl"))