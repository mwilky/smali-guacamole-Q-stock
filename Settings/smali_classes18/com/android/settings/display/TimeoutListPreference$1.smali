.class Lcom/android/settings/display/TimeoutListPreference$1;
.super Ljava/lang/Object;
.source "TimeoutListPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/TimeoutListPreference;->onDialogCreated(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/TimeoutListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/TimeoutListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/TimeoutListPreference$1;->this$0:Lcom/android/settings/display/TimeoutListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/TimeoutListPreference$1;->this$0:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v0}, Lcom/android/settings/display/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/TimeoutListPreference$1;->this$0:Lcom/android/settings/display/TimeoutListPreference;

    invoke-static {v1}, Lcom/android/settings/display/TimeoutListPreference;->access$000(Lcom/android/settings/display/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method
