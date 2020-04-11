.class Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;
.super Landroid/database/ContentObserver;
.source "AutofillPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/autofill/AutofillPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChange$0$AutofillPreferenceCategory$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->shouldDisableDependents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->notifyDependencyChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;->this$0:Lcom/android/settings/development/autofill/AutofillPreferenceCategory;

    invoke-static {v0}, Lcom/android/settings/development/autofill/AutofillPreferenceCategory;->access$000(Lcom/android/settings/development/autofill/AutofillPreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$24vtbdnKjmYcrJhveWxi0iMWPPE;

    invoke-direct {v1, p0}, Lcom/android/settings/development/autofill/-$$Lambda$AutofillPreferenceCategory$1$24vtbdnKjmYcrJhveWxi0iMWPPE;-><init>(Lcom/android/settings/development/autofill/AutofillPreferenceCategory$1;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
