.class public final synthetic Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

.field private final synthetic f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;->f$0:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/-$$Lambda$WifiDppQrCodeScannerFragment$MYF3pfAm1GnbeVdLhZBtGr1d_fM;->f$1:Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->lambda$onCreate$1$WifiDppQrCodeScannerFragment(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;Ljava/lang/Integer;)V

    return-void
.end method
