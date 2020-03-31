.class public final synthetic Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$tZJkvUnAETgfbkQvNUGL2mQWd9s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$tZJkvUnAETgfbkQvNUGL2mQWd9s;->f$0:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$SizeCompatModeActivityController$RestartActivityButton$tZJkvUnAETgfbkQvNUGL2mQWd9s;->f$0:Landroid/widget/PopupWindow;

    invoke-static {p0, p1}, Lcom/android/systemui/SizeCompatModeActivityController$RestartActivityButton;->lambda$showHint$1(Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
