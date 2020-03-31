.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;->INSTANCE:Lcom/android/systemui/statusbar/-$$Lambda$AlertingNotificationManager$p-A8-yzC_BK0PtkudKAmBZE-xfo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;

    invoke-static {p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->lambda$getAllEntries$0(Lcom/android/systemui/statusbar/AlertingNotificationManager$AlertEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method
