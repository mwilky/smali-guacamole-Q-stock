.class public Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;
.super Landroidx/preference/Preference;
.source "ModuleLicensePreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ModuleLicensePreference"


# instance fields
.field private final mModule:Landroid/content/pm/ModuleInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ModuleInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->mModule:Landroid/content/pm/ModuleInfo;

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showError()V
    .locals 3

    nop

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121426

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->mModule:Landroid/content/pm/ModuleInfo;

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/legal/ModuleLicenseProvider;->getUriForPackage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->mModule:Landroid/content/pm/ModuleInfo;

    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.htmlviewer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ModuleLicensePreference"

    const-string v3, "Failed to find viewer"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/legal/ModuleLicensePreference;->showError()V

    :goto_0
    return-void
.end method
