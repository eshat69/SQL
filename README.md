# SQL

https://codepen.io/pen
//https://codepen.io/Eshat-Rahman/pen/yyLRaxm
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sorry Shantammu</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #2c3e50;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      overflow: hidden;
    }

    .message-container {
      text-align: center;
      position: relative;
      z-index: 1;
    }

    .message {
      font-size: 3rem;
      color: #e74c3c;
      display: inline-block;
      opacity: 0;
      animation: fadeIn 3s forwards, shake 1s ease-in-out 3s infinite, glitch 0.3s infinite;
    }

    .message span {
      font-size: 4rem;
      animation: bounce 1s ease-in-out 4s infinite;
    }

    .sad-emoji {
      font-size: 5rem;
      color: #e74c3c;
      animation: shake 1s ease-in-out 3s infinite;
    }

    /* Rain Effect */
    .rain {
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      z-index: 0;
      pointer-events: none;
      overflow: hidden;
    }

    .rain div {
      position: absolute;
      width: 1px;
      height: 100%;
      background: rgba(255, 255, 255, 0.6);
      animation: fall 0.5s linear infinite;
    }

    @keyframes fadeIn {
      0% {
        opacity: 0;
      }

      100% {
        opacity: 1;
      }
    }

    @keyframes shake {
      0% {
        transform: translateX(0);
      }

      25% {
        transform: translateX(-20px);
      }

      50% {
        transform: translateX(20px);
      }

      75% {
        transform: translateX(-20px);
      }

      100% {
        transform: translateX(0);
      }
    }

    @keyframes bounce {
      0% {
        transform: translateY(0);
      }

      50% {
        transform: translateY(-15px);
      }

      100% {
        transform: translateY(0);
      }
    }

    @keyframes glitch {
      0% {
        text-shadow: 1px 1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
      }

      50% {
        text-shadow: -1px -1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
      }

      100% {
        text-shadow: 1px 1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
      }
    }

    @keyframes fall {
      0% {
        top: -100px;
      }

      100% {
        top: 100vh;
      }
    }

    /* Background for somber mood */
    .background {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: #34495e;
      animation: backgroundChange 6s infinite alternate;
    }

    @keyframes backgroundChange {
      0% {
        background-color: #34495e;
      }

      50% {
        background-color: #2c3e50;
      }

      100% {
        background-color: #34495e;
      }
    }
  </style>
</head>

<body>
  <div class="rain">
    <div style="left: 10%; animation-duration: 1.5s;"></div>
    <div style="left: 20%; animation-duration: 1.2s;"></div>
    <div style="left: 30%; animation-duration: 1.7s;"></div>
    <div style="left: 50%; animation-duration: 1.3s;"></div>
    <div style="left: 70%; animation-duration: 1.6s;"></div>
  </div>
  <div class="background"></div>
  <div class="message-container">
    <div class="message">
      Sorry Shantammu <span>😞</span>
    </div>
    <div class="sad-emoji">
      😔
    </div>
  </div>
</body>

</html>



-------------

body {
  font-family: Arial, sans-serif;
  background-color: #2c3e50;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  margin: 0;
  overflow: hidden;
}

.message-container {
  text-align: center;
  position: relative;
  z-index: 1;
}

.message {
  font-size: 3rem;
  color: #e74c3c;
  display: inline-block;
  opacity: 0;
  animation: fadeIn 3s forwards, shake 1s ease-in-out 3s infinite,
    glitch 0.3s infinite;
}

.message span {
  font-size: 4rem;
  animation: bounce 1s ease-in-out 4s infinite;
}

.sad-emoji {
  font-size: 5rem;
  color: #e74c3c;
  animation: shake 1s ease-in-out 3s infinite;
}

/* Rain Effect */
.rain {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  z-index: 0;
  pointer-events: none;
  overflow: hidden;
}

.rain div {
  position: absolute;
  width: 1px;
  height: 100%;
  background: rgba(255, 255, 255, 0.6);
  animation: fall 0.5s linear infinite;
}

@keyframes fadeIn {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

@keyframes shake {
  0% {
    transform: translateX(0);
  }
  25% {
    transform: translateX(-20px);
  }
  50% {
    transform: translateX(20px);
  }
  75% {
    transform: translateX(-20px);
  }
  100% {
    transform: translateX(0);
  }
}

@keyframes bounce {
  0% {
    transform: translateY(0);
  }
  50% {
    transform: translateY(-15px);
  }
  100% {
    transform: translateY(0);
  }
}

@keyframes glitch {
  0% {
    text-shadow: 1px 1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
  }
  50% {
    text-shadow: -1px -1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
  }
  100% {
    text-shadow: 1px 1px 2px #ff0000, 0 0 25px #ff0000, 0 0 5px darkorange;
  }
}

@keyframes fall {
  0% {
    top: -100px;
  }
  100% {
    top: 100vh;
  }
}

/* Background for somber mood */
.background {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: #34495e;
  animation: backgroundChange 6s infinite alternate;
}

@keyframes backgroundChange {
  0% {
    background-color: #34495e;
  }
  50% {
    background-color: #2c3e50;
  }
  100% {
    background-color: #34495e;
  }
}
--------------------------
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Flower Animation</title>
    <style>
        body {
            background: #131b21;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
            text-align: center;
            color: white;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }

        .flower {
            animation: bloom 5s infinite alternate ease-in-out;
            transform-origin: center;
        }

        @keyframes bloom {
            0% {
                transform: scale(0.8);
                opacity: 0.8;
            }
            100% {
                transform: scale(1);
                opacity: 1;
            }
        }

        .sorry-text {
            margin-top: 20px;
            font-size: 48px;
            font-weight: bold;
            color: #e74c3c;
            animation: fadeInMoveUp 3s ease-out 1s forwards;
        }

        @keyframes fadeInMoveUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

    </style>
</head>
<body>
    <svg width="200" height="200" viewBox="0 0 200 200" xmlns="http://www.w3.org/2000/svg">
        <!-- Outer petals -->
        <circle cx="100" cy="30" r="40" fill="red" class="flower"/>
        <circle cx="100" cy="170" r="40" fill="red" class="flower"/>
        <circle cx="30" cy="100" r="40" fill="red" class="flower"/>
        <circle cx="170" cy="100" r="40" fill="red" class="flower"/>
        <!-- Inner petals -->
        <circle cx="100" cy="80" r="30" fill="darkred" class="flower"/>
        <circle cx="100" cy="120" r="30" fill="darkred" class="flower"/>
        <circle cx="50" cy="100" r="30" fill="darkred" class="flower"/>
        <circle cx="150" cy="100" r="30" fill="darkred" class="flower"/>
        <!-- Center of the flower -->
        <circle cx="100" cy="100" r="20" fill="yellow"/>
    </svg>
    <div class="sorry-text">Sorry</div>
</body>
</html>
---------------------------------
