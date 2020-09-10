.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mRequestedMinComplexity:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iput p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    iput-object p5, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object p6, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/internal/widget/LockPatternUtils;)V
    .locals 8

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;IILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 2

    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f1216e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f1216e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f1216e9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f1216e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f1216e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 4

    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v3}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    :goto_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 1

    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 5

    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-object v1, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result v1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v1

    return v1

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f050011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f050010

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public upgradeQuality(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mRequestedMinComplexity:I

    invoke-static {v1}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method
