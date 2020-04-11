.class public Lcom/oneplus/settings/statusbar/ClockPreference;
.super Landroidx/preference/ListPreference;
.source "ClockPreference.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static final DISABLED:Ljava/lang/String; = "disabled"

.field private static final SECONDS:Ljava/lang/String; = "seconds"

.field private static final TAG:Ljava/lang/String; = "ClockPreference"


# instance fields
.field private mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mClock:Ljava/lang/String;

.field private mClockEnabled:Z

.field private mHasSeconds:Z

.field private mHasSetValue:Z

.field private mUtils:Lcom/oneplus/settings/statusbar/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/oneplus/settings/statusbar/Utils;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/statusbar/Utils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const v0, 0x10406be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "seconds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "disabled"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateStatus()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v1, "icon_blacklist"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    iget-object v1, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const/4 v3, 0x0

    const-string v4, "clock_seconds"

    invoke-virtual {v1, v4, v3}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStatus mBlacklist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " TextUtils.join:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClockPreference"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUI()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSetValue:Z

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mHasSeconds:Z

    if-eqz v0, :cond_0

    const-string v0, "seconds"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClockEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/ClockPreference;->setValue(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/ListPreference;->onAttached()V

    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateUI()V

    return-void
.end method

.method public onDetached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/ListPreference;->onDetached()V

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/ClockPreference;->updateStatus()V

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v2, "seconds"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "clock_seconds"

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;I)V

    const-string v0, "disabled"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mClock:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mBlacklist:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ClockPreference"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/ClockPreference;->mBlacklist:Landroid/util/ArraySet;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "icon_blacklist"

    invoke-virtual {v0, v3, v2}, Lcom/oneplus/settings/statusbar/Utils;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
