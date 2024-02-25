<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/jjhickman/tensorflow-lite">
    <img src="https://www.tensorflow.org/static/site-assets/images/project-logos/tensorflow-lite-logo-social.png" alt="Tensorflow Lite" width="1200" height="675">
  </a>

<h3 align="center">tensorflow-lite</h3>

  <p align="center">
    Docker image sources for dev and production environments supporting Tensorflow Lite and Coral APIs for both Python and C++.
    <br />
    <a href="https://hub.docker.com/repository/docker/jjhickman/tensorflow-lite/general"><strong>Docker Hub »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/jjhickman/tensorflow-lite/issues">Report Bug</a>
    ·
    <a href="https://github.com/jjhickman/tensorflow-lite/issues">Request Feature</a>
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

This is the repository to build images for the Docker Hub [repository](https://hub.docker.com/repository/docker/jjhickman/tensorflow-lite/general), `jjhickman/tensorflow-lite`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With

* [Tensorflow][Tensorflow-url]
* [C++][C++-url]
* [Python][Python-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

Just plain old Docker and git. NOTE: Current supported architectures:
1. `arm64` - `aarch64`/`arm64`
2. `amd64` - `x86_64`/`amd64`

### Installation
1. For development, either use remote-containers extension in VS Code to run `jjhickman/tensorflow-lite:[TAG]`or run the following
   ```sh
   docker run -it -v ./workspace:/tensorflow-lite jjhickman/tensorflow-lite:[TAG] bash
   ```
2. Examples can be found under /coral/pycoral.
   ```sh
   cd coral/pycoral \
   && python3 examples/classify_image.py \
    --model test_data/mobilenet_v2_1.0_224_inat_bird_quant_edgetpu.tflite \
    --labels test_data/inat_bird_labels.txt \
    --input test_data/parrot.jpg
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [ ] Libcoral C++ API support
- [ ] Smaller production images
- [ ] More examples

See the [open issues](https://github.com/jjhickman/tensorflow-lite/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Project Link: [https://github.com/jjhickman/tensorflow-lite](https://github.com/jjhickman/tensorflow-lite)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Google Coral Docs](https://coral.ai/docs/accelerator/get-started/#1-install-the-edge-tpu-runtime)
* [Tensorflow Lite Docs](https://www.tensorflow.org/lite/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/jjhickman/tensorflow-lite/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/jjhickman/tensorflow-lite.svg?style=for-the-badge
[forks-url]: https://github.com/jjhickman/tensorflow-lite/network/members
[stars-shield]: https://img.shields.io/github/stars/jjhickman/tensorflow-lite.svg?style=for-the-badge
[stars-url]: https://github.com/jjhickman/tensorflow-lite/stargazers
[issues-shield]: https://img.shields.io/github/issues/jjhickman/tensorflow-lite.svg?style=for-the-badge
[issues-url]: https://github.com/jjhickman/tensorflow-lite/issues
[license-shield]: https://img.shields.io/github/license/jjhickman/tensorflow-lite.svg?style=for-the-badge
[license-url]: https://github.com/jjhickman/tensorflow-lite/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/joshjh
[Tensorflow-url]: https://www.tensorflow.org/lite/
[Python-url]: https://www.python.org/
[C++-url]: https://cplusplus.com/