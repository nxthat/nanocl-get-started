<div align="center">
  <img src="https://download.next-hat.com/ressources/images/logo.png" >
  <h1>Nanocl Getting Started</h1>
</div>

<blockquote class="tags">
 <strong>Tags</strong>
 </br>
 <span id="nxtmdoc-meta-keywords">
  documentation, guide, getting started
 </span>
</blockquote>

</br>
</br>

## Official Nanocl getting started project

1.  Create and Build the image
    ```sh
    nanocl git-repository create --url https://github.com/nxthat/nanocl-getting-started getting-started
    nanocl git-repository build getting-started
    ```
2.  Then create a cargo with it
    ```
    nanocl run --cluster my-cluster --network dev --image getting-started:master getting-started
    ```
