.class public final synthetic Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iput p2, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;->f$0:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;

    iget v1, p0, Lcom/android/settings/network/telephony/gsm/-$$Lambda$AutoSelectPreferenceController$8cfdfDm3wWXeyQnNAtsWzhpWX1k;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setChecked$0$AutoSelectPreferenceController(I)V

    return-void
.end method
