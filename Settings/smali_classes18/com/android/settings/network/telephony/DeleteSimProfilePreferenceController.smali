.class public Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DeleteSimProfilePreferenceController.java"


# instance fields
.field private mParentFragment:Landroidx/fragment/app/Fragment;

.field private mRequestCode:I

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/-$$Lambda$DeleteSimProfilePreferenceController$1xbp5IYXODDb4-Q-LSNUyEq9WEI;-><init>(Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public init(ILandroidx/fragment/app/Fragment;I)V
    .locals 3

    iput-object p2, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iput p3, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    return-void
.end method

.method public synthetic lambda$displayPreference$0$DeleteSimProfilePreferenceController(Landroidx/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.DELETE_SUBSCRIPTION_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const-string v2, "android.telephony.euicc.extra.SUBSCRIPTION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget v2, p0, Lcom/android/settings/network/telephony/DeleteSimProfilePreferenceController;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    return v1
.end method
