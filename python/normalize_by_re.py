import re

summary_text = "・a　b\n・c　d"
summary_text = re.sub(r'[　\n\r]', '', summary_text)
list = [item for item in summary_text.split('・') if item]
print(list)  # 出力: ['ab', 'cd']