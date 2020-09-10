.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;,
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final SETTING:Ljava/lang/String; = "autofill_service"

.field private static final TAG:Ljava/lang/String; = "DefaultAutofillPicker"


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method private addAddServicePreference()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->newAddServicePreferenceOrNull()Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public static getDefaultKey(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroidx/preference/Preference;
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    const-string v2, "autofill_service_search_uri"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroidx/preference/Preference;

    invoke-direct {v3, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$0s8oelF3wlFcT6K3hzQ4pRJ5WEM;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$0s8oelF3wlFcT6K3hzQ4pRJ5WEM;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const v4, 0x7f12121a

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setTitle(I)V

    const v4, 0x7f08019e

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setIcon(I)V

    const v4, 0x7ffffffe

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setPersistent(Z)V

    return-object v3
.end method

.method private update()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->updateCandidates()V

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->addAddServicePreference()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Landroid/content/pm/PackageManager;

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    const/16 v4, 0x80

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Landroid/content/pm/PackageManager;

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v2, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v6, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutofillService from \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' uses unsupported permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "DefaultAutofillPicker"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Landroid/content/pm/PackageManager;

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v2, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120200

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x318

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160044

    return v0
.end method

.method public synthetic lambda$newAddServicePreferenceOrNull$1$DefaultAutofillPicker(Landroid/content/Context;Landroid/content/Intent;Landroidx/preference/Preference;)Z
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onDestroy()V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    const-string v2, "autofill_service"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    nop

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
