# Tracking Progress #
## Directions: ##
 * Click on the blue "Get PRs/Issues Count" button below.
 * Type in a valid Github username
 * Remember, in order to complete the ["First Steps"](firststeps.md) you need:
    * at least 5 valid PRs
    * 4 comments made on issues you didn't create
    * 4 issues created
 * Click [here](firststeps.md#Step_8_-_Create_Issues_and_Pull_Requests) to return to Step 8.

<style><!--
    .dropbtn {
        background-color: #61c2f9;
        color: white;
        padding: 16px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }
--></style>

<button class="dropbtn" onclick="Set_User();">Get PRs/Issues Count</button>
<div id="results"></div>

<script>
    const res = document.getElementById('results');
    var user = "replace me with your GitHub username";

    //Functions
    //Check response from the API
    function checkStatus(response) {
        if (response.status >= 200 && response.status < 300) {
            return Promise.resolve(response)
        } else {
            return Promise.reject(new Error(response.statusText))
        }
    }

    //Validate User
    function Set_User() {
        res.innerHTML = "";
        user = prompt("Please enter username", user);
        if (!(user == "" || user == null)) {
            var url = "https://api.github.com/users/" + user;
            fetch(url)
                .then(checkStatus)
                .then(function(data) {
                    res.innerHTML = "<h2> Progress for " + user + ":</h2>";
                    Total_PRs();
                    Total_Issues();
                    Merged_PRs();
                })
                .catch(function(error) {
                    console.log(error);
                    let p = document.createElement('p');
                    p.innerHTML = "<span style='color:#FF0000;'><strong><u>ERROR</u>: User " + user + " does not exists.</strong></span>";
                    res.appendChild(p);
                });
        } else {
            let p = document.createElement('p');
            p.innerHTML = "<span style='color:#FF0000;'><strong><u>ERROR</u>: Blank or NULL user entered.<br></strong></span>";
            res.appendChild(p);
        }
    }

    //Check total number of pull requests
    function Total_PRs() {
        var url = "https://api.github.com/search/issues?q=repo:treehouses/treehouses.github.io+author:" + user + "+type:pr&sort=created&order=asc";
        fetch(url)
            .then(checkStatus)
            .then((resp) => resp.json())
            .then(function(data) {
                let p = document.createElement('p');
                p.innerHTML = "<strong>Number of PRs:<strong> " + data.total_count;
                res.appendChild(p);
            })
            .catch(function(error) {
                console.log(error);
            });
    }

    //Check total number of Comments
    function Total_PRs() {
        var url = "https://api.github.com/search/issues?q=repo:treehouses/treehouses.github.io+commenter:" + user + "+type:comment&sort=created&order=asc";
        fetch(url)
            .then(checkStatus)
            .then((resp) => resp.json())
            .then(function(data) {
                let p = document.createElement('p');
                p.innerHTML = "<strong>Number of Comments:<strong> " + data.total_count;
                res.appendChild(p);
            })
            .catch(function(error) {
                console.log(error);
            });
    }

    //Check total number of Issues Created.
    function Total_Issues() {
        var url = "https://api.github.com/search/issues?q=repo:treehouses/treehouses.github.io+author:" + user + "+type:issue&sort=created&order=asc";
        fetch(url)
            .then(checkStatus)
            .then((resp) => resp.json())
            .then(function(data) {
                let p = document.createElement('p');
                p.innerHTML = "<strong>Number of Issues:<strong> " + data.total_count;
                res.appendChild(p);
            })
            .catch(function(error) {
                console.log(error);
            });
    }

    // Check Number of merged Pull Requests
    function Merged_PRs() {
        var url = "https://api.github.com/search/issues?q=repo:treehouses/treehouses.github.io+author:" + user + "+is:merged&sort=created&order=asc";
        fetch(url)
            .then(checkStatus)
            .then((resp) => resp.json())
            .then(function(data) {
                let p = document.createElement('p');
                p.innerHTML = "<strong>Number of Merged PRs:<strong> " + data.total_count;
                res.appendChild(p);
            })
            .catch(function(error) {
                console.log(error);
            });
    }
</script>
