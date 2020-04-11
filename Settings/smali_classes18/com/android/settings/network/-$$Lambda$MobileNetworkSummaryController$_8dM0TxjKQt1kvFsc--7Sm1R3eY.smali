.class public final synthetic Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$_8dM0TxjKQt1kvFsc--7Sm1R3eY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/MobileNetworkSummaryController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$_8dM0TxjKQt1kvFsc--7Sm1R3eY;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/-$$Lambda$MobileNetworkSummaryController$_8dM0TxjKQt1kvFsc--7Sm1R3eY;->f$0:Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$0$MobileNetworkSummaryController(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
