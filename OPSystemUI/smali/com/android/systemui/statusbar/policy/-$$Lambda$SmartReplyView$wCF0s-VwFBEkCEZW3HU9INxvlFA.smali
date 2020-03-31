.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

.field private final synthetic f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;->f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;->f$0:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$SmartReplyView$wCF0s-VwFBEkCEZW3HU9INxvlFA;->f$1:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-static {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->lambda$inflateReplyButton$2(Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Landroid/view/View;)V

    return-void
.end method
