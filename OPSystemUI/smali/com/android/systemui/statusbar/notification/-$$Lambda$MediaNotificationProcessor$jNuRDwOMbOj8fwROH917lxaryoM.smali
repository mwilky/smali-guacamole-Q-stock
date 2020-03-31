.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$jNuRDwOMbOj8fwROH917lxaryoM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/palette/graphics/Palette$Filter;


# instance fields
.field private final synthetic f$0:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$jNuRDwOMbOj8fwROH917lxaryoM;->f$0:F

    return-void
.end method


# virtual methods
.method public final isAllowed(I[F)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$MediaNotificationProcessor$jNuRDwOMbOj8fwROH917lxaryoM;->f$0:F

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->lambda$processNotification$1(FI[F)Z

    move-result p0

    return p0
.end method
