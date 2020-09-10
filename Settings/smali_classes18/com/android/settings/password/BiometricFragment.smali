.class public Lcom/android/settings/password/BiometricFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "BiometricFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfirmDeviceCredential/BiometricFragment"


# instance fields
.field private mAuthenticating:Z

.field private mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

.field private mBundle:Landroid/os/Bundle;

.field private final mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mClientExecutor:Ljava/util/concurrent/Executor;

.field private final mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/password/BiometricFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$1;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    new-instance v0, Lcom/android/settings/password/BiometricFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$2;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/android/settings/password/BiometricFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/BiometricFragment$3;-><init>(Lcom/android/settings/password/BiometricFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/password/BiometricFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/password/BiometricFragment;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/BiometricFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/BiometricFragment;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method private cleanup()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/android/settings/password/BiometricFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/password/BiometricFragment;

    invoke-direct {v0}, Lcom/android/settings/password/BiometricFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/settings/password/BiometricFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/BiometricFragment;->cleanup()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x631

    return v0
.end method

.method isAuthenticating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/BiometricFragment;->setRetainInstance(Z)V

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    new-instance v1, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setFromConfirmDeviceCredential()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "subtitle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "description"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/BiometricFragment;->mBundle:Landroid/os/Bundle;

    const-string v3, "require_confirmation"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setConfirmationRequired(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object v1

    nop

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_2

    const/high16 v4, 0x20000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x30000

    if-eq v3, v4, :cond_1

    const/high16 v4, 0x40000

    if-eq v3, v4, :cond_0

    const/high16 v4, 0x50000

    if-eq v3, v4, :cond_0

    const/high16 v4, 0x60000

    if-eq v3, v4, :cond_0

    const/high16 v4, 0x80000

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1204a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1204a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/BiometricFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1204a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/android/settings/password/BiometricFragment;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setNegativeButton(Ljava/lang/CharSequence;Ljava/util/concurrent/Executor;Landroid/content/DialogInterface$OnClickListener;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    new-instance v3, Landroid/os/CancellationSignal;

    invoke-direct {v3}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v3, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput-boolean v0, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticating:Z

    iget-object v4, p0, Lcom/android/settings/password/BiometricFragment;->mBiometricPrompt:Landroid/hardware/biometrics/BiometricPrompt;

    iget-object v5, p0, Lcom/android/settings/password/BiometricFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Lcom/android/settings/password/BiometricFragment;->mAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iget v8, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    iget-object v9, p0, Lcom/android/settings/password/BiometricFragment;->mCancelCallback:Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;ILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method public setCallbacks(Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment;->mClientExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/settings/password/BiometricFragment;->mClientCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-void
.end method

.method public setUser(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/BiometricFragment;->mUserId:I

    return-void
.end method
