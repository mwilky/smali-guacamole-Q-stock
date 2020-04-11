.class public Lcom/android/settings/location/AppSettingsInjector;
.super Lcom/android/settingslib/location/SettingsInjector;
.source "AppSettingsInjector.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p2, Lcom/android/settingslib/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/AppPreference;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/location/DimmableIZatIconPreference;->getRestrictedAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/InjectedSetting;)Lcom/android/settings/widget/RestrictedAppPreference;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settingslib/location/InjectedSetting;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/location/AppSettingsInjector;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/location/DimmableIZatIconPreference;->showIzat(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
