<%inherit file="rhombus:templates/base.mako" />

% if html:
${ html }
% else:
${ content | n }
% endif

##
<%def name="stylelinks()">
	<link rel="stylesheet" href="/assets/rb/select2/css/select2.min.css" />
	<link rel="stylesheet" href="/assets/rb/css/select2-bootstrap4.min.css" />
</%def>
##
##
<%def name="jslinks()">
	<script src="/assets/rb/select2/js/select2.min.js"></script>
</%def>
##
##
<%def name="jscode()">
  ${code or '' | n}
</%def>
##
##