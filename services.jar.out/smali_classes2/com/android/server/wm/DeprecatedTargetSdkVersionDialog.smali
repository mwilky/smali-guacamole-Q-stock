.class public Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;
.super Ljava/lang/Object;
.source "DeprecatedTargetSdkVersionDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v2, 0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x1040201

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$TaeLH3pyy18K9h_WuSYLeQFy9Io;-><init>(Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;Lcom/android/server/wm/AppWarnings;)V

    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    const v5, 0x1040200

    new-instance v6, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$ZkWArfvd086vsF78_zwSd67uSUs;

    invoke-direct {v6, p2, v4}, Lcom/android/server/wm/-$$Lambda$DeprecatedTargetSdkVersionDialog$ZkWArfvd086vsF78_zwSd67uSUs;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    iget-object v5, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const-string v7, "DeprecatedTargetSdkVersionDialog"

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$0$DeprecatedTargetSdkVersionDialog(Lcom/android/server/wm/AppWarnings;Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method public show()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing SDK deprecation warning for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
