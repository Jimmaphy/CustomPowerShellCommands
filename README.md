# Jimmaphy's PowerShell Commands

Custom PowerShell commands that make my life easier.
An overview of the provided information will be included in the document.
Most of these are tailored towards my own setup,
and need to be slightly adjusted to work somewhere else.

## Adding Scripts

In order to add a command to your PowerShell profile, 
first open the profile in your favorite editor like VS Code.

```PowerShell
code $profile
```

Then add them to the profile with an alias.
There are different ways to do this,
that would not require the use of aliasses.
Though I personally find this the easiest way to achieve this.

```PowerShell
Set-Alias GoTo-Dev "[PATH]"
```

## Scripts 

### GoTo-Dev [SubFolder]

GoTo-Dev allows you to navigate to the development folder.
When the SubFolder parameter is specified, that folder will be opened.
