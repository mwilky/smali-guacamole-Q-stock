.class public final synthetic Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$S1UQqL5m76IbANQNcf9ClRlrvZA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$S1UQqL5m76IbANQNcf9ClRlrvZA;->f$0:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$S1UQqL5m76IbANQNcf9ClRlrvZA;->f$0:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->lambda$postRefreshSavedAccessPoints$0$SavedAccessPointsPreferenceController()V

    return-void
.end method
