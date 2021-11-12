## AWS SAM

AWS serverless in Dev Container which is also compatible with arm64 MacBook Air M1 in addition to amd64 platform.

By default, non-root user (node) is enabled and could be configured in devcontainer.json

### Installed extensions

- Pylance
- Python
- GitLens
- GitHistory
- Prettier
- Code Spell Checker
- Fix Json
- ESLint
- Material Icon Theme

### CloudFormation tools

There are number of tools and extensions supporting CloudFormation inside this Dev Container that I will describe in this section:

#### Documentation lookup

Working with CloudFormation templates requires knowledge about writing yaml and keeping the correct indentation. In addition one should know how to declare aws resource types.

#### Indentation support

There are two extensions defined in the Dev Container for supporting indentation, one is Indenticator, which will keep an eye on the indentations in your templates and the other extension is indent-rainbow, which shows your template's indents with different colors. For more information open Extensions sidebar (shift+cmd+x).

#### AWS Resource lookup

Open the template and just hover over any resource type, a small tooltip with the link to the related aws doc will be shown, just click on it and you will be redirected in your browser to that aws documentation page.

If you want to read the aws resource list, open Command Palette (shift+cmd+p), select Tasks: Run Task, then select _CF Resource List_, then _AWS resource and property types reference_ will be opened in your browser.

Select _CF Command Reference_ and it will open command reference page for aws cli cloudformation.

Select a Resource Type for example _AWS::S3::Bucket_ then go to Tasks and select _CF Type Search_ and it will search cloudformation documentation for the selected resource type.

#### Linter

Perhaps one of the most important features is to validate the current template and this is the job of *cf-lint* and the related vscode extension that will validate your changes against the aws api. It helps a lot since you do not need to run the template in cloudformation stack in order to receive the response, but an instant validation inside vscode after any edit.