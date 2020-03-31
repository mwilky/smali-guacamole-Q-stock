.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$5$UApHxsPG0BIvDnX5FCFYX6op1Fs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$5$UApHxsPG0BIvDnX5FCFYX6op1Fs;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$5$UApHxsPG0BIvDnX5FCFYX6op1Fs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$5$UApHxsPG0BIvDnX5FCFYX6op1Fs;->f$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicy$5$UApHxsPG0BIvDnX5FCFYX6op1Fs;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$5;->lambda$onSensorPrivacyChanged$0$PhoneStatusBarPolicy$5(Z)V

    return-void
.end method
