#ifndef FRAMELESSWINDOW_H
#define FRAMELESSWINDOW_H

#include <QQuickWindow>
#include <QtWidgets/QWidget>
#include "windows.h"


class TitleBar;

class FramelessWindow : public QQuickWindow
{
    Q_OBJECT

    Q_PROPERTY(bool movable READ movable WRITE setMovable NOTIFY movableChanged)
    Q_PROPERTY(bool resizable READ resizable WRITE setResizable NOTIFY resizableChanged)

    Q_PROPERTY(QString icon READ icon WRITE setIcon NOTIFY iconChanged)

    enum MouseArea {
        TopLeft = 1,
        Top,
        TopRight,
        Left,
        Move,
        Right,
        BottomLeft,
        Bottom,
        BottomRight,
        Client
    };




public:
    explicit FramelessWindow(QWindow *parent = nullptr);
    QString icon() const { return m_icon; }
    void setIcon(const QString &iconPath);
    bool movable() const;
    void setMovable(bool arg);
    bool resizable() const;
    void setResizable(bool arg);

signals:
    void iconChanged();

private:
    QString m_icon;
protected:
    void mousePressEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseDoubleClickEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;

signals:
    void movableChanged();
    void resizableChanged();

private:
    MouseArea getArea(const QPoint &pos);
    void setWindowGeometry(const QPoint &pos);
    void setCursorIcon();

    bool m_movable = true;
    bool m_resizable = true;
    MouseArea m_currentArea = Move;
    QPoint m_startPos;
    QPoint m_oldPos;
    QSize m_oldSize;
    QRect m_moveArea = { 8, 8, width() - 16, 35 };




};

#endif
