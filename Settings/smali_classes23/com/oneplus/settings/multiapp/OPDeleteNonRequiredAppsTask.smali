.class public Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;
.super Ljava/lang/Object;
.source "OPDeleteNonRequiredAppsTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;,
        Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;
    }
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final DEVICE_OWNER:I = 0x0

.field public static final MANAGED_USER:I = 0x2

.field public static final PROFILE_OWNER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DeleteNonRequiredAppsTask"

.field private static final TAG_PACKAGE_LIST_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_SYSTEM_APPS:Ljava/lang/String; = "system-apps"


# instance fields
.field private final mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDisallowedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mLeaveAllSystemAppsEnabled:Z

.field private final mMdmPackageName:Ljava/lang/String;

.field private final mNewProfile:Z

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mProvisioningType:I

.field private final mRequiredAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I

.field private final mVendorDisallowedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorRequiredAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/internal/view/IInputMethodManager;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p9, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mMdmPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    iput p7, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    iput-boolean p6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mNewProfile:Z

    iput-boolean p8, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iput-object p3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    const v0, 0x7f0300e8

    const v1, 0x7f030061

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mVendorRequiredAppsList:Ljava/util/List;

    iput-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mVendorDisallowedAppsList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V
    .locals 10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-static {}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Lcom/android/internal/view/IInputMethodManager;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;)Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    return-object v0
.end method

.method private getCurrentAppsWithLauncher()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    const v3, 0x1c2200

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    const-string v2, "DeleteNonRequiredAppsTask"

    const-string v3, "Oneplus-MATCH_SYSTEM_ONLY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getDisallowedApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mDisallowedAppsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;
    .locals 2

    const-string v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    return-object v1
.end method

.method private getPackagesToDelete()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getCurrentAppsWithLauncher()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getRequiredApps()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mProvisioningType:I

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getSystemInputMethods()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getDisallowedApps()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method static getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "system_apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getSystemInputMethods()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private readSystemApps(Ljava/io/File;)Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DeleteNonRequiredAppsTask"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v6, :cond_5

    :cond_2
    if-eq v5, v7, :cond_1

    const/4 v7, 0x4

    if-ne v5, v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "value"

    invoke-interface {v3, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "XmlPullParserException trying to read the system apps"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_1
    move-exception v2

    const-string v3, "IOException trying to read the system apps"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    nop

    :goto_3
    return-object v1
.end method

.method private removeNonInstalledPackages(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v3

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static shouldDeleteNonRequiredApps(Landroid/content/Context;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getSystemAppsFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private writeSystemApps(Ljava/util/Set;Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    const-string v0, "item"

    const-string v1, "system-apps"

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "value"

    invoke-interface {v3, v5, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    goto :goto_0

    :cond_0
    invoke-interface {v3, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DeleteNonRequiredAppsTask"

    const-string v2, "IOException trying to write the system apps"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected getRequiredApps()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mRequiredAppsList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public run()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mLeaveAllSystemAppsEnabled:Z

    const-string v1, "DeleteNonRequiredAppsTask"

    if-eqz v0, :cond_0

    const-string v0, "Not deleting non-required apps."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    return-void

    :cond_0
    const-string v0, "Deleting non required apps."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->getPackagesToDelete()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->removeNonInstalledPackages(Ljava/util/Set;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mCallback:Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;

    invoke-virtual {v1}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;->onSuccess()V

    return-void

    :cond_1
    new-instance v2, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting package ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] as user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x4

    iget v7, p0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->mUserId:I

    invoke-virtual {v5, v4, v2, v6, v7}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_0

    :cond_2
    return-void
.end method
