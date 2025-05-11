# Agent will not ask user questions unless absolutely necessary and work on completing the tasks given below.

This is a RestAPI Assignment for Creating QR Codes

First push this codebase to https://github.com/harshilkikani/IS601_HW9.git

Before you beign, have a full audit of the whole codebase so you get an understanding of what you are dealing with.

For this assignment there have been created a X number of errors in the codebase that you will have to find and fix them. You should keep running the tests and read the error and try to understand what it mean. The purpose of this assignment is to get you accustomed to running the project and following the steps that the program uses to process requests.

You can get this repo working with the install instructions below. The assignment repo will not work because its filled with broken code.
1. Make virtual environment: python3 -m venv venv
2. Activate virtual environment: source venv/bin/activate
3. Install requirements: pip install -r requirements.txt
4. IMPORTANT run: mkdir qr_codes to create a qr codes directory to save in, permissions will be messed up and the docker container won't be able to write to the qr_codes directory if you don't.
5. Make sure docker is started (Docker is already started by user)
6. run pytest locally to check that it works locally
7. Start the app with docker compose up --build
8. Goto http://localhost/docs to view openapi spec documentation
9. Click "authorize" input username: admin password: secret
10. Test making, retrieving, and deleting QR codes on the spec page.

The entire QR program must pass GitHub actions, so you will need to update the production.yml file to have your info and setup your environment variables on the repository.

Add, commit, and push the fixed code to a new repo once complete.