.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

.field private final synthetic f$1:Landroidx/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;->f$1:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;->f$0:Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$TopLevelStoragePreferenceController$U7ZEz_Sh5aDJDkrfySNJywBLfnA;->f$1:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummary$1$TopLevelStoragePreferenceController(Landroidx/preference/Preference;)V

    return-void
.end method
