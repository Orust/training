summary_text = "・a　b\n・c　d"
summary_text = summary_text.replace('　', '')
summary_text = summary_text.replace('\n', '').replace('\r', '')
list = [item.strip() for item in summary_text.split('・') if item.strip()]
print(list) # ['ab', 'cd']