# copy paste
# alias pbcopy = xclip -selection clipboard
# alias pbpaste = xclip -selection clipboard -o

# Sys
def 'update' [] {
	brew update; brew upgrade;
	# sudo apt-get update -y; sudo apt-get upgrade -y;
}
def 'clean' [] {
	brew cleanup --prune=all
	# sudo apt autoremove; sudo apt autoclean;
}
def 'up' [] {
	update; clean;
}

# clear
alias cls = clear

# Git
alias gs = git status
alias gp = git push
alias gpl = git pull
alias gpo = git push origin
alias gpl = git pull origin
alias gpu = git push up
alias gplu = git pull up
alias log = git log --oneline --graph --all

# Mysql
alias sql = mysql -u root

# Hg
alias hs = hg stat -m
alias cdiff = hg log -p -r
alias hamend = hg commit --amend --no-edit

def 'hl' [] {
  let current_branch = hg branch;
  hg log --graph --style compact -b $current_branch;
}

def 'hdiff' [] {
  let selected = hs | sed "s/^M //" | fzf
  hg diff $selected
}

# python
alias python = python3
alias pip = pip3

# Zoxide
alias cd = z

# alias ls = exa

def gencp [project] {
	if project == null {
		print "Provide a project name"
	}
	let deployment = $env.HOME + "/ZIDE/deployment/" + $project
	let source = $env.HOME + "/ZIDE/deployment/" + $project
	if ($deployment | path exists) == false or ($source | path exists) == false {
		print ("Project " + $project + " not exists")
		exit 1
	}
	let prefix = `<?xml version="1.0" encoding="UTF-8"?>
<classpath>
	<classpathentry kind="src" path="tools/export/src"/>
	<classpathentry kind="src" path="mickeylite-master"/>
	<classpathentry kind="src" path="tools/data_conversion/src"/>
	<classpathentry excluding="export/src/|security/build.bat|data_conversion/src/" kind="src" path="tools"/>
	<classpathentry kind="src" path="source/service"/>
	<classpathentry excluding="com/manageengine/sdpod/dashboard/util/PieDataProperties.java|com/adventnet/servicedesk/software/form/SWListViewForm.java|com/manageengine/sdpod/servlet/OrgInvitation.java|com/manageengine/sdpod/servlet/SDPDataMigrationServlet.java|com/manageengine/sdpod/dashboard/util/AngularDataProperties.java|com/manageengine/sdpod/dashboard/util/ConstructFusionChart.java|com/adventnet/servicedesk/tasks/transformer/TasksCheckBoxTransformer.java|com/manageengine/sdpod/transformer/SDPODTransformer.java|com/adventnet/servicedesk/setup/action/ServiceCatalogListcontroller.java|com/adventnet/servicedesk/software/form/SoftwareHomeForm.java|com/manageengine/sdpod/udf/UDFDetail.java|com/manageengine/sdpod/dashboard/util/FusionChartUtil.java" kind="src" path="source/library"/>
	<classpathentry kind="src" path="resources/src"/>
	<classpathentry kind="con" path="org.eclipse.jdt.launching.JRE_CONTAINER">
		<attributes>
			<attribute name="module" value="true"/>
		</attributes>
	</classpathentry>
	<classpathentry kind="con" path="org.eclipse.jdt.USER_LIBRARY/request_perf_SDPLIVE"/>
	<classpathentry kind="con" path="org.eclipse.jst.j2ee.internal.web.container"/>
	<classpathentry kind="con" path="org.eclipse.jst.j2ee.internal.module.container"/>
	<classpathentry kind="output" path="bin"/>`

	let dependencies = fd .jar$ $deployment | split row -r '\n' | reduce --fold "" { |path, acc| $acc + '<classpathentry kind="lib" path=' + $path + '" />' }
	let sufix = `</classpath>`
	$prefix + $dependencies + $sufix | save -f ($source + "/.classpath")
}


