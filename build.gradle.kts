plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "nl.theorieb.arabic"
    compileSdk = 35

    defaultConfig {
        applicationId = "nl.theorieb.arabic"
        minSdk = 23
        targetSdk = 35
        versionCode = 2
        versionName = "1.1"
    }
}
