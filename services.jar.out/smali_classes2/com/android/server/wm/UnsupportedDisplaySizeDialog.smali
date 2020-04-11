.class public Lcom/android/server/wm/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x43fa0000    # 500.0f

    const/4 v2, 0x5

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x1040719

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1090124

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->create()V

    iget-object v4, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v6, "UnsupportedDisplaySizeDialog"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    const v6, 0x10201bf

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v2, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/-$$Lambda$UnsupportedDisplaySizeDialog$kNTis_qoFUeRNp68lF_xmreusJU;-><init>(Lcom/android/server/wm/UnsupportedDisplaySizeDialog;Lcom/android/server/wm/AppWarnings;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic lambda$new$0$UnsupportedDisplaySizeDialog(Lcom/android/server/wm/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/wm/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
