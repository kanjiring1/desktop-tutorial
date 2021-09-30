Xin chào <i>{{ $demo->receiver }}</i>,
<p>Website {{ $demo->url }} vừa được truy cập, thông tin địa chỉ IP như sau.</p>
<table class="table table-striped table-bordered table-hover table-checkable order-column" style="display: block" width="100%">
    <thead>
    <tr>
        <th>STT</th>
        <th>Tên trường thông tin</th>
        <th>Giá trị</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd gradeX">
        <td>1</td>
        <td>Tên bài viết</td>
        <td>{{$demo->ip->article->title}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>2</td>
        <td>IP:port</td>
        <td>{{$demo->ip->ip}}:{{$demo->ip->port}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>3</td>
        <td>Loại IP</td>
        <td>{{$demo->ip->IPtype}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>4</td>
        <td>Nhà cung cấp dịch vụ</td>
        <td>{{$demo->ip->asn}}<br>{{$demo->ip->org}}<br>{{$demo->ip->isp}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>5</td>
        <td>Quốc gia</td>
        <td>{{$demo->ip->country}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>6</td>
        <td>Tỉnh/thành phố</td>
        <td>{{$demo->ip->region}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>7</td>
        <td>Huyện/thị xã/thành phố</td>
        <td>{{$demo->ip->city}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>8</td>
        <td>Kinh độ/Vĩ độ</td>
        <td>{{$demo->ip->lat}},{{$demo->ip->long}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>9</td>
        <td>Proxy</td>
        <td>{{$demo->ip->proxy}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>10</td>
        <td>Tên thiết bị</td>
        <td>{{$demo->ip->device}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>11</td>
        <td>Ngôn ngữ trình duyệt</td>
        <td>{{$demo->ip->browserlang}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>12</td>
        <td>Thông tin sever</td>
        <td>{{$demo->ip->severinfo}}</td>
    </tr>
    <tr class="odd gradeX">
        <td>13</td>
        <td>Thời gian</td>
        <td>{{$demo->ip->created_at}}</td>
    </tr>
    </tbody>
</table>

Cảm ơn đã quan tâm,
<br/>
<i>{{ $demo->sender }}</i>