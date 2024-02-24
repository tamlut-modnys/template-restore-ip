# `restore-ip`

An IPv4 address consists of exactly four non-negative whole numbers, separated by single dots. Each number is between 0 and 255 (inclusive) and cannot have leading zeros, unless it is 0.

For example, the following are valid IPv4 addresses:
* `1.1.1.1`
* `255.255.255.255`
* `192.168.0.1`
* `23.25.1.194`

While the following are not:
* `01.1.1.01`
* `256.255.255.255`
* `192.168.00.1`
* `a23.b25.1.194`

A database containing IPv4 addresses has gotten out of order up by addresses losing their dots. Your job is to restore it. You'll write a generator `restore-ip` such that it takes a `@t` `cord` containing only numerical digits and returns a `set` of all the `@t` `cord`s with dots inserted into the given digits to create a valid IPv4 address. 

We also want to crash if the input given is clearly invalid. Your generator should crash in the following cases:
* If the input contains any characters other than digits.
* If the input length is greater than 12.


Example usage:
```
> +restore-ip '12345678'
{'1.234.56.78' '123.45.6.78' '12.34.56.78' '123.45.67.8' '123.4.56.78'}
```

```
> +restore-ip '1234567890123456'
dojo: naked generator failure
```

```
> +restore-ip '111a'
dojo: naked generator failure
```

Two winners will be rewarded. **Fastest Solution** will go to the first person to send in a working solution. **Best Style** will be measured by a variety of factors, including clarity, elegance, following Hoon-ish conventions, being well-commented, and code runtime. For examples, see the challenges and winners from our last competition [[1]](https://docs.urbit.org/language/hoon/examples/abc-blocks) [[2]](https://docs.urbit.org/language/hoon/examples/luhn-number) [[3]](https://docs.urbit.org/language/hoon/examples/water-towers). You can also refer to the [Hoon Style Guide](https://docs.urbit.org/language/hoon/guides/style).


For submission, fill out this [google form](https://forms.gle/BsF5kC2jnk9aX3J5A) with your information. See instructions to create the repository below. Remember to make your repo private and add tamlut-modnys as a collaborator.

This challenge opens at 11am ET (8am PT, 5pm Central Europe) on Feb 24, and will close at the same time on March 2. Good luck!

## Using this Repository

**Please _do not fork this repository directly on GitHub._**  Instead, please use GitHub's "template" function following [the instructions below](#creating-a-repository) to copy this repository and customize it for your project.

If you are working with a fakeship, this is one way to set things up for rapid development:

1. Start a fakeship and `|mount %base`.
2. Clone this repo into the same directory as the fakeship, then copy the contents of `src/` into `zod/base/`.
3. Develop either in `zod/base/` or in this repo folder directly.  It's probably a bit easier to develop in the fakeship and copy back here frequently.

## Testing

This repo provides test cases you can use to verify that your code submission works correctly.

To run the tests, make sure you have mounted and committed the files into the `base` folder of your fake ship. Then from dojo run
```
-test %/tests/restore-ip/hoon
```
This will run several tests, each of which will pass or fail. For debugging help you can inspect the test code to see which ones passed and failed.

To avoid issues, make sure your generator is written in the provided file at `/gen/restore-ip.hoon`

For more info on testing in Hoon, see [this link](https://docs.urbit.org/userspace/apps/guides/unit-tests).

## Creating a Repository

1.  Log in to GitHub.
    (If you do not have an account, you can quickly create one for free.)
    You must be logged in for the remaining steps to work.

2.  On this page, click on the green "Use this template" button (top right)

3.  Select the owner for your new repository.
    (This will probably be you, but may instead be an organization you belong to.)

4.  Choose a name for your copy of the archetype repository.
    We recommend you call it `ha-restore-ip` (no 'template').

5.  Make sure the repository is **private**, leave "Include all branches" unchecked, and click on "Create repository from template". You will be redirected to your new copy of the template respository.

6.  Share the repo with tamlut-modnys on Github as a collaborator.

After this is complete, you can use this repo to handle your competition development and submission. Please note that by submitting a solution, you allow it to be made public under the MIT license.
