plugins {
    id("com.android.application") version"8.6.1"
    id("org.jetbrains.kotlin.android") version"2.0.21"
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
