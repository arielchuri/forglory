from markdown import markdown
import os

# Define the options as per the command
extensions = ['tables', 'attr_list', 'md_in_html', 'def_list', 'toc', 'smarty']

def convert_markdown_to_html(content):
    return markdown(content, extensions=extensions)

# Read file names from file_list.txt
file_names = []
with open('file_list.txt', 'r') as file:
    file_names = file.read().splitlines()

concatenated_content = ''
for file_name in file_names:
    file_path = f'src/{file_name}'  # Add 'src/' prefix to the file name
    with open(file_path, 'r') as file:
        concatenated_content += file.read() + '\n'

# Convert concatenated content to HTML with the specified options
html_output = convert_markdown_to_html(concatenated_content)

# Read the CSS file
css_content = ''
with open('output/styles.css', 'r') as css_file:
    css_content = css_file.read()

# Specify the output directory
output_directory = 'output'

# Create the output directory if it does not exist
os.makedirs(output_directory, exist_ok=True)

# Define the path for the output HTML file in the output directory
output_file_path = os.path.join(output_directory, 'output.html')

# Write the HTML output with CSS to the output file in the output directory
with open(output_file_path, 'w') as output_file:
    output_file.write(f'''
<!DOCTYPE html>
<html>
<head>
    <title>Markdown to HTML</title>
    <style>{css_content}</style>
</head>
<body>
{html_output}
</body>
</html>
''')

print('HTML conversion and file writing completed')  # Print a message after the process is completed
