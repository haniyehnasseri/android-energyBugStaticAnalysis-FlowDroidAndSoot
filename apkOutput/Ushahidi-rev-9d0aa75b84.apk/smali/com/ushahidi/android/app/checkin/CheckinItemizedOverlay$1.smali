.class Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;
.super Ljava/lang/Object;
.source "CheckinItemizedOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->setBalloonTouchListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;

    .prologue
    .line 141
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;"
    iput-object p1, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;

    iput p2, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;, "Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v7, 0x7f0a002b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "l":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 148
    new-array v3, v5, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    .line 151
    .local v3, "states":[I
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    move v4, v5

    .line 164
    .end local v3    # "states":[I
    :goto_0
    return v4

    .line 155
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 156
    new-array v2, v6, [I

    .line 157
    .local v2, "newStates":[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;->this$0:Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;

    iget v6, p0, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay$1;->val$thisIndex:I

    invoke-virtual {v4, v6}, Lcom/ushahidi/android/app/checkin/CheckinItemizedOverlay;->onBalloonTap(I)Z

    move v4, v5

    .line 162
    goto :goto_0

    .end local v2    # "newStates":[I
    :cond_3
    move v4, v6

    .line 164
    goto :goto_0
.end method
