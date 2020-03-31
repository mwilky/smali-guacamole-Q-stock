.class public final synthetic Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;->f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iput p2, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;->f$0:Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;

    iget p0, p0, Lcom/android/systemui/stackdivider/-$$Lambda$Divider$DockDividerVisibilityListener$cPiHgQdgCDQeKAQTEdGGnGaaM_c;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/stackdivider/Divider$DockDividerVisibilityListener;->lambda$onDockSideChanged$1$Divider$DockDividerVisibilityListener(I)V

    return-void
.end method
