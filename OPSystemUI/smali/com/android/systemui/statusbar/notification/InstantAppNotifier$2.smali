.class Lcom/android/systemui/statusbar/notification/InstantAppNotifier$2;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "InstantAppNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/InstantAppNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$2;->this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskStackChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/InstantAppNotifier$2;->this$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->access$100(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;)V

    return-void
.end method
