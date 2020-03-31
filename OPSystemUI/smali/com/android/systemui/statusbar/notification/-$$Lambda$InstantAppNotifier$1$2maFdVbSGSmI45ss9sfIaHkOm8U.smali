.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$1$2maFdVbSGSmI45ss9sfIaHkOm8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$1$2maFdVbSGSmI45ss9sfIaHkOm8U;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$1$2maFdVbSGSmI45ss9sfIaHkOm8U;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$1;->lambda$onUserSwitchComplete$0$InstantAppNotifier$1()V

    return-void
.end method
