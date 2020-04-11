.class public final synthetic Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

.field private final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iput-wide p2, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget-wide v1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$EmUp4DFy_wYLjrc3Djbp4crtAHE;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$1$AutoSelectPreferenceController(J)V

    return-void
.end method
