.class public abstract Lcom/android/settings/deviceinfo/StorageWizardBase;
.super Landroidx/fragment/app/FragmentActivity;
.source "StorageWizardBase.java"


# static fields
.field protected static final EXTRA_FORMAT_FORGET_UUID:Ljava/lang/String; = "format_forget_uuid"

.field protected static final EXTRA_FORMAT_PRIVATE:Ljava/lang/String; = "format_private"

.field protected static final EXTRA_FORMAT_SLOW:Ljava/lang/String; = "format_slow"

.field protected static final EXTRA_MIGRATE_SKIP:Ljava/lang/String; = "migrate_skip"


# instance fields
.field private mBack:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mDisk:Landroid/os/storage/DiskInfo;

.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mNext:Lcom/google/android/setupcompat/template/FooterButton;

.field protected mStorage:Landroid/os/storage/StorageManager;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field protected mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardBase$1;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method private copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method protected findFirstVolume(I)Landroid/os/storage/VolumeInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(II)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method protected findFirstVolume(II)Landroid/os/storage/VolumeInfo;
    .locals 5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing mounted volume of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hosted by disk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; trying again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StorageSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0xfa

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getBackButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0
.end method

.method protected getDiskDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f1216b3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getDiskShortDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const v0, 0x7f1216b3

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0a0616

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/GlifLayout;

    return-object v0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    return-object v0
.end method

.method protected getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    const v0, 0x7f0a0673

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    return-object v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f1303ad

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onNavigateBack(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected setAuxChecklist()V
    .locals 6

    const v0, 0x7f0a066e

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d02d9

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x7f0a0672

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f121590

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected varargs setBackButtonText(I[Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    return-void
.end method

.method protected setBackButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    return-void
.end method

.method protected varargs setBodyText(I[Ljava/lang/CharSequence;)V
    .locals 2

    const v0, 0x7f0a066f

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setContentView(I)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1219e7

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$fM0gCSTTN1T2Je2_NvbxAeyKcxM;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const v2, 0x7f1303e4

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1219e9

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/-$$Lambda$zFPWNnsTxDJLy-tWHRumtDh9D8g;-><init>(Lcom/android/settings/deviceinfo/StorageWizardBase;)V

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const v2, 0x7f1303e3

    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mBack:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    const v0, 0x1080506

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    return-void
.end method

.method protected setCurrentProgress(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v0, 0x7f0a0674

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected varargs setHeaderText(I[Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setIcon(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorAccent(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setKeepScreenOn(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getGlifLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method protected varargs setNextButtonText(I[Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    return-void
.end method

.method protected setNextButtonVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mNext:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v1, p1

    const-string v2, "android.os.storage.extra.DISK_ID"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "android.os.storage.extra.VOLUME_ID"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "format_forget_uuid"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyStringExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "format_private"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "format_slow"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    const-string v2, "migrate_skip"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageWizardBase;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
