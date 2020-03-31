.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;->f$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    iget-object p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->lambda$onRemoteInputSent$0$NotificationRemoteInputManager$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
