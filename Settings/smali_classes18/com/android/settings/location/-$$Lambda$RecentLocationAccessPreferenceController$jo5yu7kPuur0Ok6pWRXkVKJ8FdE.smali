.class public final synthetic Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

.field private final synthetic f$1:Lcom/android/settingslib/location/RecentLocationAccesses$Access;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/location/RecentLocationAccessPreferenceController;Lcom/android/settingslib/location/RecentLocationAccesses$Access;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;->f$0:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    iput-object p2, p0, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;->f$1:Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;->f$0:Lcom/android/settings/location/RecentLocationAccessPreferenceController;

    iget-object v1, p0, Lcom/android/settings/location/-$$Lambda$RecentLocationAccessPreferenceController$jo5yu7kPuur0Ok6pWRXkVKJ8FdE;->f$1:Lcom/android/settingslib/location/RecentLocationAccesses$Access;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/location/RecentLocationAccessPreferenceController;->lambda$updateRecentApps$1$RecentLocationAccessPreferenceController(Lcom/android/settingslib/location/RecentLocationAccesses$Access;Landroid/view/View;)V

    return-void
.end method
