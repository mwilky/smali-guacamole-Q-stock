.class public Lcom/oneplus/settings/better/ReadingModeEffectDetail;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ReadingModeEffectDetail.java"


# static fields
.field private static final DIALOG_SELECTED_AVAILABLE:I = 0x2

.field private static final DIALOG_SELECTED_CHROMATIC:I = 0x0

.field private static final DIALOG_SELECTED_MONO:I = 0x1

.field private static final MODE_EFFECT_AVAILABLE:I = 0x3

.field private static final MODE_EFFECT_CHROMATIC:I = 0x2

.field private static final MODE_EFFECT_MONO:I

.field private static mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

.field private static mUid:I


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private mSelectedValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/oneplus/settings/better/ReadingModeEffectManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    return-object v0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private static getSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getAppEffectSelectValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v1, 0x7f120f0b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    const v1, 0x7f120f0f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const v1, 0x7f120f09

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static show(Landroidx/fragment/app/Fragment;ILjava/lang/String;I)V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-direct {v0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, p3}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    const-class v3, Lcom/oneplus/settings/better/ReadingModeEffectDetail;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v2

    sput-object v2, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    sget-object v2, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getAppEffectSelectValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iput v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v2, v1, :cond_2

    iput v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mLabel:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120f11

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->mSelectedValue:I

    new-instance v2, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail$2;-><init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V

    const v3, 0x7f0300cd

    invoke-virtual {v0, v3, v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/better/ReadingModeEffectDetail$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail$1;-><init>(Lcom/oneplus/settings/better/ReadingModeEffectDetail;)V

    const v2, 0x7f12010d

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/better/ReadingModeEffectDetail;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
