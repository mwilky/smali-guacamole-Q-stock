.class Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

.field final synthetic val$acccountType:Ljava/lang/String;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->val$acccountType:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$000(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroidx/preference/PreferenceFragmentCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;->this$0:Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-static {v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->access$100(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountTypePrefLoader"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x1

    return v1
.end method
