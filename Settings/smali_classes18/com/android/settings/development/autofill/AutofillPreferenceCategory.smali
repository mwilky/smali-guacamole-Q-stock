.class public final Lcom/android/settings/development/autofill/AutofillPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "AutofillPreferenceCategory.java"


# static fields
.field private static final DELAYED_MESSAGE_TIME_MS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "AutofillPreferenceCategory"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;

    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isAutofillEnabled()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/autofill/AutofillManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutofillEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillPreferenceCategory"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/PreferenceCategory;->onAttached()V

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "autofill_service"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroidx/preference/PreferenceCategory;->onDetached()V

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->isAutofillEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldDisableDependents(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillPreferenceCategory"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
