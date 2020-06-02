.class public Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;
.super Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.source "ContextualNotificationChannelSlice.java"


# static fields
.field public static final PREFS:Ljava/lang/String; = "notification_channel_slice_prefs"

.field public static final PREF_KEY_INTERACTED_PACKAGES:Ljava/lang/String; = "interacted_packages"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelWorker;

    return-object v0
.end method

.method protected getSubTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;->mContext:Landroid/content/Context;

    const v1, 0x7f121209

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_NOTIFICATION_CHANNEL_SLICE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method protected isUserInteracted(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;->mContext:Landroid/content/Context;

    const-string v1, "notification_channel_slice_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "interacted_packages"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
