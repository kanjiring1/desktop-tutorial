<table class="table table-striped table-bordered table-hover table-checkable order-column" style="display: block" width="100%">
    <thead>
        <tr>
            <th>ID</th>
            <th>Tên bài viết</th>
            <th>IP:port</th>
            <th>Dịch vụ</th>
            <th>Quốc gia</th>
            <th>Tỉnh/thành phố</th>
            <th>Huyện/thị xã/ thành phố</th>
            <th>Thời gian truy cập</th>
        </tr>
    </thead>
    <tbody>
        @foreach($ipinfo as $info)
        <tr class="odd gradeX">
            <td>{!! $info->id !!}</td>
            <td>{!! $info->article->title !!}</td>
            <td><a href="#myModal" data-toggle="modal" data-id="{!! $info->id !!}" class="btn-block">{!! $info->ip !!}:{!! $info->port !!}</a></td>
            <td>{!! $info->org !!}</td>
            <td>{!! $info->country !!} <img src="{!! $info->country_flag !!}" width="25"></td>
            <td>{!! $info->region !!}</td>
            <td>{!! $info->city !!}</td>
            <td>{!! $info->created_at !!}</td>
        </tr>
        @endforeach
    </tbody>
</table>