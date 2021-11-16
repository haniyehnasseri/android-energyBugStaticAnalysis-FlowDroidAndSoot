.class Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;
.super Ljava/lang/Object;
.source "UshahidiItemizedOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->setBalloonTouchListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ushahidi/android/app/UshahidiItemizedOverlay;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/ushahidi/android/app/UshahidiItemizedOverlay;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/ushahidi/android/app/UshahidiItemizedOverlay;

    .prologue
    .line 148
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;"
    iput-object p1, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;->this$0:Lcom/ushahidi/android/app/UshahidiItemizedOverlay;

    iput p2, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;, "Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    const v7, 0x7f0a002b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "l":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 155
    new-array v3, v5, [I

    const v4, 0x10100a7

    aput v4, v3, v6

    .line 158
    .local v3, "states":[I
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    move v4, v5

    .line 171
    .end local v3    # "states":[I
    :goto_0
    return v4

    .line 162
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 163
    new-array v2, v6, [I

    .line 164
    .local v2, "newStates":[I
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 168
    :cond_2
    iget-object v4, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;->this$0:Lcom/ushahidi/android/app/UshahidiItemizedOverlay;

    iget v6, p0, Lcom/ushahidi/android/app/UshahidiItemizedOverlay$1;->val$thisIndex:I

    invoke-virtual {v4, v6}, Lcom/ushahidi/android/app/UshahidiItemizedOverlay;->onBalloonTap(I)Z

    move v4, v5

    .line 169
    goto :goto_0

    .end local v2    # "newStates":[I
    :cond_3
    move v4, v6

    .line 171
    goto :goto_0
.end method
