import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A147301: a(n) = smallest value of parameter m such that the function rad(m n (n - m)) has maximal value n=2,3,4..., 0 < m < n where the function rad(k) (also called radical(k)) is the product of distinct prime divisors of k.

The programs for A147301, there is no canonical definition to state claims against.
-/

/-! ## A147301.P10520790112450018029

`A240471(A048825(n+2)+A000079(n))`
-/

namespace A147301.P10520790112450018029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240471 (A048825 (n + 2) + A000079 n).toNat

end

end A147301.P10520790112450018029

/-! ## A147301.P16198761231231005034

`gcd(A318182(n+2), A318723(A318182(n+1)))`
-/

namespace A147301.P16198761231231005034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A318182 (n + 2)) (A318723 (A318182 (n + 1)).toNat)

end

end A147301.P16198761231231005034

/-! ## A147301.P14793448516948517724

`or(A051700(A060509(n+2)), A105553(2*(n+1)))`
-/

namespace A147301.P14793448516948517724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051700 (A060509 (n + 2)).toNat) (A105553 (2 * (n + 1)))

end

end A147301.P14793448516948517724

/-! ## A147301.P14594302499462861740

`A212179(A176691(n+1))`
-/

namespace A147301.P14594302499462861740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212179 (A176691 (n + 1)).toNat

end

end A147301.P14594302499462861740

/-! ## A147301.P959969035699383179

`A007895(∑[A214247(n)^n])`
-/

namespace A147301.P959969035699383179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214247 n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147301.P959969035699383179

/-!
# A147302: Numbers k where records occur in the expression log(k) / log(A147298(k)).

The programs for A147302, there is no canonical definition to state claims against.
-/

/-! ## A147302.P13286324336296949553

`A377487(A328857(n+2))`
-/

namespace A147302.P13286324336296949553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377487 (A328857 (n + 2)).toNat

end

end A147302.P13286324336296949553

/-!
# A147303: Numbers k where records occur in expression Log[A147298(k)]/Log[k] k=2,3,4,...

The programs for A147303, there is no canonical definition to state claims against.
-/

/-! ## A147303.P12900863910507415271

`record[A147298(n+2)-(A002378(n)+n)]`
-/

namespace A147303.P12900863910507415271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147298 (n + 2) - (A002378 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147303.P12900863910507415271

/-! ## A147303.P16656960898432183021

`A008619(record[A147298(n+2)-A002378(n)])`
-/

namespace A147303.P16656960898432183021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147298 (n + 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147303.P16656960898432183021

/-! ## A147303.P15946171874986892375

`A028242(record[A147298(n+2)-A002378(n)])`
-/

namespace A147303.P15946171874986892375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147298 (n + 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147303.P15946171874986892375

/-! ## A147303.P862662881080695304

`A052938(record[A147298(n+2)-A002378(n)])`
-/

namespace A147303.P862662881080695304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147298 (n + 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147303.P862662881080695304

/-! ## A147303.P2101342504258668046

`A328399(record[A147298(n+2)-A002378(n)])`
-/

namespace A147303.P2101342504258668046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147298 (n + 2) - A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147303.P2101342504258668046

/-!
# A147304: 

The programs for A147304, there is no canonical definition to state claims against.
-/

/-! ## A147304.P3170769185175323950

`A066796(A000040(n+1)²-1)`
-/

namespace A147304.P3170769185175323950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066796 (A000040 (n + 1) ^ 2 - 1).toNat

end

end A147304.P3170769185175323950

/-!
# A147305: Numbers B of the constrained search for ABC records described in A147306.

The programs for A147305, there is no canonical definition to state claims against.
-/

/-! ## A147305.P15196972618412565027

`A147306(n+1)-A147307(n+1)`
-/

namespace A147305.P15196972618412565027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147306 (n + 1) - A147307 (n + 1)

end

end A147305.P15196972618412565027

/-! ## A147305.P14640245609827421078

`A147306(n+1)-A267135(A267406(n+1))`
-/

namespace A147305.P14640245609827421078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147306 (n + 1) - A267135 (A267406 (n + 1)).toNat

end

end A147305.P14640245609827421078

/-! ## A147305.P12921020992647301683

`A147306(n+1)-(A202168(n+1)+A169786(A024493(n)))`
-/

namespace A147305.P12921020992647301683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147306 (n + 1) - (A202168 (n + 1) + A169786 (A024493 n).toNat)

end

end A147305.P12921020992647301683

/-! ## A147305.P4427511240644875757

`A002024(A309861(n))*A033845(n+1)-A147307(n+1)`
-/

namespace A147305.P4427511240644875757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A309861 n).toNat * A033845 (n + 1) - A147307 (n + 1)

end

end A147305.P4427511240644875757

/-!
# A147306: Numbers C in successive records of the merit function of the ABC conjecture considering only C from A033845.

The programs for A147306, there is no canonical definition to state claims against.
-/

/-! ## A147306.P5343578957093769440

`A147307(n+1)+A147305(n+1)`
-/

namespace A147306.P5343578957093769440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147307 (n + 1) + A147305 (n + 1)

end

end A147306.P5343578957093769440

/-! ## A147306.P10303637884481846789

`A033845(n+1)*A210960(A084386(n))`
-/

namespace A147306.P10303637884481846789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1) * A210960 (A084386 n).toNat

end

end A147306.P10303637884481846789

/-! ## A147306.P14536633448455715922

`A002024(A309861(n))*A033845(n+1)`
-/

namespace A147306.P14536633448455715922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A309861 n).toNat * A033845 (n + 1)

end

end A147306.P14536633448455715922

/-! ## A147306.P14322630705398208813

`A033845(n+1)*A356300(A006720(n))`
-/

namespace A147306.P14322630705398208813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1) * A356300 (A006720 n).toNat

end

end A147306.P14322630705398208813

/-! ## A147306.P13520734114105285808

`A033845(n+1)*A206487(A319559(n))`
-/

namespace A147306.P13520734114105285808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1) * A206487 (A319559 n).toNat

end

end A147306.P13520734114105285808

/-!
# A147307: Numbers A of the constrained search for ABC records described in A147306.

The programs for A147307, there is no canonical definition to state claims against.
-/

/-! ## A147307.P10002234385551656988

`A147306(n+1)-A147305(n+1)`
-/

namespace A147307.P10002234385551656988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147306 (n + 1) - A147305 (n + 1)

end

end A147307.P10002234385551656988

/-! ## A147307.P9357717749267838924

`A147306(A000027(n+1))%A147305(n+1)`
-/

namespace A147307.P9357717749267838924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147306 (A000027 (n + 1)).toNat) (A147305 (n + 1))

end

end A147307.P9357717749267838924

/-! ## A147307.P13873980724510829278

`A000265(A147306(n+1)%A147305(n+1))`
-/

namespace A147307.P13873980724510829278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.tmod (A147306 (n + 1)) (A147305 (n + 1))).toNat

end

end A147307.P13873980724510829278

/-! ## A147307.P205901621761483345

`A147306(A080197(n+1))%A147305(n+1)`
-/

namespace A147307.P205901621761483345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147306 (A080197 (n + 1)).toNat) (A147305 (n + 1))

end

end A147307.P205901621761483345

/-! ## A147307.P18026058345533749511

`A147306(A090108(n+1))%A147305(n+1)`
-/

namespace A147307.P18026058345533749511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147306 (A090108 (n + 1)).toNat) (A147305 (n + 1))

end

end A147307.P18026058345533749511

/-!
# A147308: Riordan array [sech(x), arcsin(tanh(x))].

The programs for A147308, there is no canonical definition to state claims against.
-/

/-! ## A147308.P16990138982340656122

`A117568(n)*A147309(n)`
-/

namespace A147308.P16990138982340656122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A147309 n

end

end A147308.P16990138982340656122

/-! ## A147308.P5291823622834679429

`A147309(n)*A369736(n)`
-/

namespace A147308.P5291823622834679429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147309 n * A369736 n

end

end A147308.P5291823622834679429

/-! ## A147308.P4394733941949561346

`A130194(n+1)*A147309(n)`
-/

namespace A147308.P4394733941949561346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A147309 n

end

end A147308.P4394733941949561346

/-! ## A147308.P2084826778856977439

`A009001(A025581(n))*A147309(n)`
-/

namespace A147308.P2084826778856977439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A025581 n).toNat * A147309 n

end

end A147308.P2084826778856977439

/-! ## A147308.P9160204810126542592

`A009001(A051933(n))*A147309(n)`
-/

namespace A147308.P9160204810126542592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051933 n).toNat * A147309 n

end

end A147308.P9160204810126542592

/-! ## A147308.P17958822776449950345

`A009531(A101492(n))*A147309(n)`
-/

namespace A147308.P17958822776449950345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A101492 n).toNat * A147309 n

end

end A147308.P17958822776449950345

/-! ## A147308.P8781441572647977879

`A009531(A101493(n))*A147309(n)`
-/

namespace A147308.P8781441572647977879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A101493 n).toNat * A147309 n

end

end A147308.P8781441572647977879

/-! ## A147308.P6146554452988824591

`A009001(A151890(n))*A147309(n)`
-/

namespace A147308.P6146554452988824591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A151890 n).toNat * A147309 n

end

end A147308.P6146554452988824591

/-! ## A147308.P2894204329077580249

`A009001(A292564(n))*A147309(n)`
-/

namespace A147308.P2894204329077580249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A292564 n).toNat * A147309 n

end

end A147308.P2894204329077580249

/-! ## A147308.P3344056657785573681

`A009531(A004736(n+1))*A147309(n)`
-/

namespace A147308.P3344056657785573681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A004736 (n + 1)).toNat * A147309 n

end

end A147308.P3344056657785573681

/-! ## A147308.P15243341483741497994

`A009001(A083487(n+1))*A147309(n)`
-/

namespace A147308.P15243341483741497994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A083487 (n + 1)).toNat * A147309 n

end

end A147308.P15243341483741497994

/-! ## A147308.P5719496926202856664

`A009001(A155724(n+1))*A147309(n)`
-/

namespace A147308.P5719496926202856664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A155724 (n + 1)).toNat * A147309 n

end

end A147308.P5719496926202856664

/-! ## A147308.P16137004651320853527

`A034947(A130128(n+1))*A147309(n)`
-/

namespace A147308.P16137004651320853527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A130128 (n + 1)).toNat * A147309 n

end

end A147308.P16137004651320853527

/-!
# A147309: Riordan array [sec(x), log(sec(x) + tan(x))].

The programs for A147309, there is no canonical definition to state claims against.
-/

/-! ## A147309.P15721706901221800443

`abs(A147308(n))`
-/

namespace A147309.P15721706901221800443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147308 n|

end

end A147309.P15721706901221800443

/-! ## A147309.P146500893255013151

`A117568(n)*A147308(n)`
-/

namespace A147309.P146500893255013151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A147308 n

end

end A147309.P146500893255013151

/-! ## A147309.P7125723286486911517

`A147308(n)*A369736(n)`
-/

namespace A147309.P7125723286486911517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147308 n * A369736 n

end

end A147309.P7125723286486911517

/-! ## A147309.P8165413912011071050

`gcd(A000038(n), A147308(n))`
-/

namespace A147309.P8165413912011071050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147308 n)

end

end A147309.P8165413912011071050

/-! ## A147309.P9714868734252801886

`lcm(A020985(n), A147308(n))`
-/

namespace A147309.P9714868734252801886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A147308 n)

end

end A147309.P9714868734252801886

/-! ## A147309.P1512181381585204414

`lcm(-A147308(n), A065357(n))`
-/

namespace A147309.P1512181381585204414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A147308 n) (A065357 n)

end

end A147309.P1512181381585204414

/-! ## A147309.P11908553507896272135

`A130194(n+1)*A147308(n)`
-/

namespace A147309.P11908553507896272135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A147308 n

end

end A147309.P11908553507896272135

/-! ## A147309.P9779190253960746784

`A009001(A025581(n))*A147308(n)`
-/

namespace A147309.P9779190253960746784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A025581 n).toNat * A147308 n

end

end A147309.P9779190253960746784

/-! ## A147309.P1477739431770226471

`A034947(A004736(n+1))*A147308(n)`
-/

namespace A147309.P1477739431770226471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A004736 (n + 1)).toNat * A147308 n

end

end A147309.P1477739431770226471

/-! ## A147309.P10302244236031686428

`gcd(-A147308(n), A133985(A194598(n+1)))`
-/

namespace A147309.P10302244236031686428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A147308 n) (A133985 (A194598 (n + 1)).toNat)

end

end A147309.P10302244236031686428

/-!
# A147311: Riordan array [1, arcsin(tanh(x))].

The programs for A147311, there is no canonical definition to state claims against.
-/

/-! ## A147311.P16640297630477171727

`A106470(n)*A147312(n)`
-/

namespace A147311.P16640297630477171727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A147312 n

end

end A147311.P16640297630477171727

/-! ## A147311.P14287915380709573187

`A117568(n)*A147312(n)`
-/

namespace A147311.P14287915380709573187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A147312 n

end

end A147311.P14287915380709573187

/-! ## A147311.P7719158460897630751

`A147312(n)*A369736(n)`
-/

namespace A147311.P7719158460897630751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147312 n * A369736 n

end

end A147311.P7719158460897630751

/-! ## A147311.P11176534951571089883

`A130194(n+1)*A147312(n)`
-/

namespace A147311.P11176534951571089883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A147312 n

end

end A147311.P11176534951571089883

/-! ## A147311.P10099321493128638889

`A009001(A025581(n))*A147312(n)`
-/

namespace A147311.P10099321493128638889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A025581 n).toNat * A147312 n

end

end A147311.P10099321493128638889

/-! ## A147311.P10629896540157218291

`A009001(A051933(n))*A147312(n)`
-/

namespace A147311.P10629896540157218291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A051933 n).toNat * A147312 n

end

end A147311.P10629896540157218291

/-! ## A147311.P9554330865899171124

`A009531(A101492(n))*A147312(n)`
-/

namespace A147311.P9554330865899171124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A101492 n).toNat * A147312 n

end

end A147311.P9554330865899171124

/-! ## A147311.P11451659760188334979

`A009531(A101493(n))*A147312(n)`
-/

namespace A147311.P11451659760188334979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A101493 n).toNat * A147312 n

end

end A147311.P11451659760188334979

/-! ## A147311.P1731520781387705854

`A009001(A151890(n))*A147312(n)`
-/

namespace A147311.P1731520781387705854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A151890 n).toNat * A147312 n

end

end A147311.P1731520781387705854

/-! ## A147311.P10075805612216239870

`A034947(A193739(n))*A147312(n)`
-/

namespace A147311.P10075805612216239870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A193739 n).toNat * A147312 n

end

end A147311.P10075805612216239870

/-!
# A147312: Riordan array [1,log(sec(x)+tan(x))].

The programs for A147312, there is no canonical definition to state claims against.
-/

/-! ## A147312.P902241960422260756

`abs(A147311(n))`
-/

namespace A147312.P902241960422260756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147311 n|

end

end A147312.P902241960422260756

/-! ## A147312.P15986722695606632068

`A106470(n)*A147311(n)`
-/

namespace A147312.P15986722695606632068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106470 n * A147311 n

end

end A147312.P15986722695606632068

/-! ## A147312.P15423541553783804411

`A117568(n)*A147311(n)`
-/

namespace A147312.P15423541553783804411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A147311 n

end

end A147312.P15423541553783804411

/-! ## A147312.P10880581597277512094

`A147311(n)*A369736(n)`
-/

namespace A147312.P10880581597277512094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147311 n * A369736 n

end

end A147312.P10880581597277512094

/-! ## A147312.P11435102720835252265

`gcd(A000038(n), A147311(n))`
-/

namespace A147312.P11435102720835252265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147311 n)

end

end A147312.P11435102720835252265

/-! ## A147312.P11705656482356564712

`lcm(A020985(n), A147311(n))`
-/

namespace A147312.P11705656482356564712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A147311 n)

end

end A147312.P11705656482356564712

/-! ## A147312.P17748175258695480589

`lcm(-A147311(n), A033999(n))`
-/

namespace A147312.P17748175258695480589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A147311 n) (A033999 n)

end

end A147312.P17748175258695480589

/-! ## A147312.P4640016657123086933

`A130194(n+1)*A147311(n)`
-/

namespace A147312.P4640016657123086933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130194 (n + 1) * A147311 n

end

end A147312.P4640016657123086933

/-! ## A147312.P8616489825684625345

`sqrt(A147311(n)^A000032(C(2, n+2)))`
-/

namespace A147312.P8616489825684625345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A147311 n : ℚ) ^ (A000032 (Nat.choose 2 (n + 2)) : ℤ) : ℝ)

end

end A147312.P8616489825684625345

/-!
# A147314: Weight distribution of [512,46,128] Reed-Muller (or RM) code.

The programs for A147314, there is no canonical definition to state claims against.
-/

/-! ## A147314.P4149790131501558819

`A186423(C(A186417(n), comp[2*n+3]))`
-/

namespace A147314.P4149790131501558819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186423 (Nat.choose (A186417 n).toNat (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A147314.P4149790131501558819

/-! ## A147314.P17412055353416111942

`A340152(A081125(n))*A353893(n)`
-/

namespace A147314.P17412055353416111942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (A081125 n).toNat * A353893 n

end

end A147314.P17412055353416111942

/-! ## A147314.P6812350518514851435

`A270218(n)%A296284(A353893(n))`
-/

namespace A147314.P6812350518514851435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270218 n) (A296284 (A353893 n).toNat)

end

end A147314.P6812350518514851435

/-! ## A147314.P3313055319253382189

`lcm(A113430(A051947(n)), A270218(n))`
-/

namespace A147314.P3313055319253382189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A113430 (A051947 n).toNat) (A270218 n)

end

end A147314.P3313055319253382189

/-! ## A147314.P16898312305569281397

`lcm(A270929(A007827(n)), A353882(n))`
-/

namespace A147314.P16898312305569281397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A270929 (A007827 n).toNat) (A353882 n)

end

end A147314.P16898312305569281397

/-!
# A147315: L-matrix for Euler numbers A000111(n+1).

The programs for A147315, there is no canonical definition to state claims against.
-/

/-! ## A147315.P7690948102404719279

`A185421(n+1)/A166350(n+1)`
-/

namespace A147315.P7690948102404719279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A147315.P7690948102404719279

/-! ## A147315.P1978345621282863943

`A185421(n+1)/A002260(n+1)!`
-/

namespace A147315.P1978345621282863943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A147315.P1978345621282863943

/-! ## A147315.P15090192530666490070

`A185421(n+1)/(A002262(n)+1)!`
-/

namespace A147315.P15090192530666490070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (n + 1) : ℚ) / (Nat.factorial (A002262 n + 1).toNat : ℚ)

end

end A147315.P15090192530666490070

/-! ## A147315.P4802602169271587601

`A185421(n+1)/(A002260(n+1)*A233543(n))`
-/

namespace A147315.P4802602169271587601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (n + 1) : ℚ) / (A002260 (n + 1) * A233543 n : ℚ)

end

end A147315.P4802602169271587601

/-! ## A147315.P10907638397900199852

`A008277(n+1)/A019538(n+1)*A185421(n+1)`
-/

namespace A147315.P10907638397900199852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A185421 (n + 1) : ℚ)

end

end A147315.P10907638397900199852

/-! ## A147315.P13028071513337819092

`A008275(n+1)/A048594(n+1)*A185421(n+1)`
-/

namespace A147315.P13028071513337819092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008275 (n + 1) : ℚ) / (A048594 (n + 1) : ℚ) * (A185421 (n + 1) : ℚ)

end

end A147315.P13028071513337819092

/-! ## A147315.P7330349293741075186

`A185421(n+1)/A284600(A077320(n+1))!`
-/

namespace A147315.P7330349293741075186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185421 (n + 1) : ℚ) / (Nat.factorial (A284600 (A077320 (n + 1)).toNat).toNat : ℚ)

end

end A147315.P7330349293741075186

/-!
# A147317: Numbers k which divide tau(k) and are not 7-smooth (where tau(k) = A000594(k) is Ramanujan's tau function).

The programs for A147317, there is no canonical definition to state claims against.
-/

/-! ## A147317.P14690606821337593103

`∩[A063938(n+1), A068191(n+1)]`
-/

namespace A147317.P14690606821337593103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A147317.P14690606821337593103

/-!
# A147319: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 00100-00100-00100-11111 pattern in any orientation.

The programs for A147319, there is no canonical definition to state claims against.
-/

/-! ## A147319.P2792555108988184859

`A359899(A361996(∑[n+2]))`
-/

namespace A147319.P2792555108988184859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359899 (A361996 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147319.P2792555108988184859

/-! ## A147319.P11342581912821155129

`ceil(A302174(n)/A337154(n))`
-/

namespace A147319.P11342581912821155129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A302174 n : ℚ) / (A337154 n : ℚ)⌉

end

end A147319.P11342581912821155129

/-! ## A147319.P4277272757452371226

`A344180(or(9, A287645(n+1)))`
-/

namespace A147319.P4277272757452371226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (Int.lor 9 (A287645 (n + 1))).toNat

end

end A147319.P4277272757452371226

/-! ## A147319.P7897810521280489072

`abs(A341028(A008292(2*n+1)))`
-/

namespace A147319.P7897810521280489072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A341028 (A008292 (2 * n + 1)).toNat|

end

end A147319.P7897810521280489072

/-!
# A147320: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 00100-00100-00100-11111 pattern in any orientation.

The programs for A147320, there is no canonical definition to state claims against.
-/

/-! ## A147320.P16920628442498983429

`A186007(A046825(n))`
-/

namespace A147320.P16920628442498983429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186007 (A046825 n).toNat

end

end A147320.P16920628442498983429

/-! ## A147320.P2046133870314970755

`A091719(A346381(n))`
-/

namespace A147320.P2046133870314970755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091719 (A346381 n).toNat

end

end A147320.P2046133870314970755

/-! ## A147320.P16696333663937392024

`A162424(A321966(n))`
-/

namespace A147320.P16696333663937392024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162424 (A321966 n).toNat

end

end A147320.P16696333663937392024

/-! ## A147320.P5257640159109168140

`A205946(A322891(n))`
-/

namespace A147320.P5257640159109168140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205946 (A322891 n).toNat

end

end A147320.P5257640159109168140

/-! ## A147320.P8444137701900436246

`A393100(A148128(n))`
-/

namespace A147320.P8444137701900436246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393100 (A148128 n).toNat

end

end A147320.P8444137701900436246

/-!
# A147321: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 00100-00100-00100-11111 pattern in any orientation.

The programs for A147321, there is no canonical definition to state claims against.
-/

/-! ## A147321.P7701410021277476237

`A147006(n+1)+A101606(A147326(n+1))`
-/

namespace A147321.P7701410021277476237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147006 (n + 1) + A101606 (A147326 (n + 1)).toNat

end

end A147321.P7701410021277476237

/-! ## A147321.P10728321521050671368

`A287528(A147345(n+1))+A147006(n+1)`
-/

namespace A147321.P10728321521050671368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287528 (A147345 (n + 1)).toNat + A147006 (n + 1)

end

end A147321.P10728321521050671368

/-! ## A147321.P2039998562761722217

`A147820(2*a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A147321.P2039998562761722217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1] fun n a =>
  A147820 (2 * a (n - 1) + 1).toNat

end

end A147321.P2039998562761722217

/-! ## A147321.P2066854888753254888

`ceil(A326669(ceil(ceil(2^(n-2)/2)/2))/2)`
-/

namespace A147321.P2066854888753254888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326669 ⌈(⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / 2⌉ : ℚ) / 2⌉.toNat : ℚ) / 2⌉

end

end A147321.P2066854888753254888

/-! ## A147321.P17647540592092310583

`A049456(A256402(n))`
-/

namespace A147321.P17647540592092310583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (A256402 n).toNat

end

end A147321.P17647540592092310583

/-!
# A147324: Number of n X n binary arrays symmetric under 180 degree rotation with all 1's connected only in a 00100-00100-00100-11111 pattern in any orientation.

The programs for A147324, there is no canonical definition to state claims against.
-/

/-! ## A147324.P17017474004026874512

`A255350(A000045(n)*A000389(n))`
-/

namespace A147324.P17017474004026874512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A000045 n * A000389 n).toNat

end

end A147324.P17017474004026874512

/-! ## A147324.P53854808483316801

`∏{d}[floor(2^(n+1)/(n+1)), A327482(#)]`
-/

namespace A147324.P53854808483316801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A327482 d

end

end A147324.P53854808483316801

/-! ## A147324.P12124756961301135951

`A325512(A099960(n))`
-/

namespace A147324.P12124756961301135951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325512 (A099960 n).toNat

end

end A147324.P12124756961301135951

/-! ## A147324.P3234429418611870982

`A347578(A219752(n))`
-/

namespace A147324.P3234429418611870982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 (A219752 n).toNat

end

end A147324.P3234429418611870982

/-! ## A147324.P17675707263809785068

`A355145(A263658(n+1))`
-/

namespace A147324.P17675707263809785068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355145 (A263658 (n + 1)).toNat

end

end A147324.P17675707263809785068

/-!
# A147325: Number of n X n binary arrays with all ones connected only in a 00100-00100-11111-00100 pattern in any orientation.

The programs for A147325, there is no canonical definition to state claims against.
-/

/-! ## A147325.P1408647699471663310

`A147327(2*(n+2))`
-/

namespace A147325.P1408647699471663310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147327 (2 * (n + 2))

end

end A147325.P1408647699471663310

/-! ## A147325.P10103647614594633322

`or(A147338(n+1), A147343(A000322(n)))`
-/

namespace A147325.P10103647614594633322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147338 (n + 1)) (A147343 (A000322 n).toNat)

end

end A147325.P10103647614594633322

/-! ## A147325.P15220446218980550974

`or(A147338(n+1), A153675(A000577(n+1)))`
-/

namespace A147325.P15220446218980550974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147338 (n + 1)) (A153675 (A000577 (n + 1)).toNat)

end

end A147325.P15220446218980550974

/-! ## A147325.P17967509079575521375

`or(A147338(n+1), A147351(A147328(n+1)))`
-/

namespace A147325.P17967509079575521375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147338 (n + 1)) (A147351 (A147328 (n + 1)).toNat)

end

end A147325.P17967509079575521375

/-!
# A147326: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 00100-00100-11111-00100 pattern in any orientation.

The programs for A147326, there is no canonical definition to state claims against.
-/

/-! ## A147326.P1039274173589175315

`A193592(∑[∑[A042085(n)]])`
-/

namespace A147326.P1039274173589175315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147326.P1039274173589175315

/-! ## A147326.P5649372728716046442

`A169581(gcd(n², A076870(n)))`
-/

namespace A147326.P5649372728716046442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169581 (Int.gcd (n ^ 2 : ℤ) (A076870 n))

end

end A147326.P5649372728716046442

/-! ## A147326.P10565042990074551315

`A299203(A135101(n+1)+1)`
-/

namespace A147326.P10565042990074551315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299203 (A135101 (n + 1) + 1).toNat

end

end A147326.P10565042990074551315

/-! ## A147326.P2028217501447427656

`gcd(n%2, A097853(A141414(n)))`
-/

namespace A147326.P2028217501447427656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A097853 (A141414 n).toNat)

end

end A147326.P2028217501447427656

/-! ## A147326.P1511908371192387322

`A304716(A007318(3*n)*A287378(n))`
-/

namespace A147326.P1511908371192387322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304716 (A007318 (3 * n) * A287378 n).toNat

end

end A147326.P1511908371192387322

/-!
# A147328: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 00100-00100-11111-00100 pattern in any orientation.

The programs for A147328, there is no canonical definition to state claims against.
-/

/-! ## A147328.P8015133449849647020

`A118170(A260505(n))`
-/

namespace A147328.P8015133449849647020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118170 (A260505 n).toNat

end

end A147328.P8015133449849647020

/-! ## A147328.P2201924454039438638

`A084827(A318123(n))`
-/

namespace A147328.P2201924454039438638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084827 (A318123 n).toNat

end

end A147328.P2201924454039438638

/-! ## A147328.P13766599652438506391

`A329135(A216631(n+1))`
-/

namespace A147328.P13766599652438506391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329135 (A216631 (n + 1)).toNat

end

end A147328.P13766599652438506391

/-! ## A147328.P1603813985791759346

`A300362(or(3, A203611(n)))`
-/

namespace A147328.P1603813985791759346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (Int.lor 3 (A203611 n)).toNat

end

end A147328.P1603813985791759346

/-!
# A147330: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 00100-00100-11111-00100 pattern in any orientation.

The programs for A147330, there is no canonical definition to state claims against.
-/

/-! ## A147330.P9105893242805681112

`A299924(A256913(n)+A006774(n))`
-/

namespace A147330.P9105893242805681112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299924 (A256913 n + A006774 n).toNat

end

end A147330.P9105893242805681112

/-! ## A147330.P13097584620946875106

`A112384(A286209(n))`
-/

namespace A147330.P13097584620946875106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112384 (A286209 n).toNat

end

end A147330.P13097584620946875106

/-! ## A147330.P17161053835254075525

`A263862(A280240(n))`
-/

namespace A147330.P17161053835254075525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263862 (A280240 n).toNat

end

end A147330.P17161053835254075525

/-! ## A147330.P4427790191464807176

`A097367(A049164(n+1))`
-/

namespace A147330.P4427790191464807176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097367 (A049164 (n + 1)).toNat

end

end A147330.P4427790191464807176

/-! ## A147330.P7039387578388263206

`A140471(A047200(n+1))`
-/

namespace A147330.P7039387578388263206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140471 (A047200 (n + 1)).toNat

end

end A147330.P7039387578388263206

/-!
# A147331: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 00100-00100-11111-00100 pattern in any orientation.

The programs for A147331, there is no canonical definition to state claims against.
-/

/-! ## A147331.P9963019329801713795

`A065716(A262496(n))+1`
-/

namespace A147331.P9963019329801713795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065716 (A262496 n).toNat + 1

end

end A147331.P9963019329801713795

/-! ## A147331.P10675892808811634302

`A061836(C(2^floor(log2(n+1))+n, 10))`
-/

namespace A147331.P10675892808811634302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061836 (Nat.choose (2 ^ Nat.log 2 (n + 1) + n) 10)

end

end A147331.P10675892808811634302

/-! ## A147331.P10430013078698762642

`A039930(a(n-1)+11)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=5`
-/

namespace A147331.P10430013078698762642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 5] fun n a =>
  A039930 (a (n - 1) + 11).toNat

end

end A147331.P10430013078698762642

/-! ## A147331.P14552909035968627555

`A025452(A149845(n))`
-/

namespace A147331.P14552909035968627555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A149845 n).toNat

end

end A147331.P14552909035968627555

/-! ## A147331.P2934343124353861488

`A174829(A011941(n))`
-/

namespace A147331.P2934343124353861488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174829 (A011941 n).toNat

end

end A147331.P2934343124353861488

/-!
# A147333: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 01000-11100-00111-00010 pattern in any orientation.

The programs for A147333, there is no canonical definition to state claims against.
-/

/-! ## A147333.P199160543912456521

`or(A147377(n+1), A147386(A147372(n+1)))`
-/

namespace A147333.P199160543912456521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147377 (n + 1)) (A147386 (A147372 (n + 1)).toNat)

end

end A147333.P199160543912456521

/-! ## A147333.P1897517729531539031

`or(A147377(n+1), A147415(A147401(n+1)))`
-/

namespace A147333.P1897517729531539031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147377 (n + 1)) (A147415 (A147401 (n + 1)).toNat)

end

end A147333.P1897517729531539031

/-!
# A147334: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01000-11100-00111-00010 pattern in any orientation.

The programs for A147334, there is no canonical definition to state claims against.
-/

/-! ## A147334.P11629663923073661776

`A147463(n^A333807(n+1))`
-/

namespace A147334.P11629663923073661776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A333807 (n + 1) : ℤ))).toNat

end

end A147334.P11629663923073661776

/-! ## A147334.P2158667183407398484

`A147463(C(n, A333807(n+1)))`
-/

namespace A147334.P2158667183407398484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (Nat.choose n (A333807 (n + 1)).toNat)

end

end A147334.P2158667183407398484

/-! ## A147334.P15677580563025373113

`A147463(n^A119608(∑{d}[n+1, C(2, #)!]-1))`
-/

namespace A147334.P15677580563025373113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A119608 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) - 1) : ℤ))).toNat

end

end A147334.P15677580563025373113

/-! ## A147334.P15222477328804421599

`A147463(C(A028310(n), A147446(n+1)))`
-/

namespace A147334.P15222477328804421599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (Nat.choose (A028310 n).toNat (A147446 (n + 1)).toNat)

end

end A147334.P15222477328804421599

/-! ## A147334.P11318721052941399083

`A147463(C(A233583(n+1), A147446(n+1)))`
-/

namespace A147334.P11318721052941399083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147463 (Nat.choose (A233583 (n + 1)).toNat (A147446 (n + 1)).toNat)

end

end A147334.P11318721052941399083

/-!
# A147335: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01000-11100-00111-00010 pattern in any orientation.

The programs for A147335, there is no canonical definition to state claims against.
-/

/-! ## A147335.P825050246449179915

`A147501(A120522(2^n)+n)`
-/

namespace A147335.P825050246449179915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147501 (A120522 (2 ^ n) + (n : ℤ)).toNat

end

end A147335.P825050246449179915

/-! ## A147335.P5015047356760135869

`A147501(or(n, A120522(2^n)))`
-/

namespace A147335.P5015047356760135869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147501 (Int.lor (n : ℤ) (A120522 (2 ^ n))).toNat

end

end A147335.P5015047356760135869

/-! ## A147335.P18307478251723243686

`A113983(A307971(n)-A034851(n))`
-/

namespace A147335.P18307478251723243686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (A307971 n - A034851 n).toNat

end

end A147335.P18307478251723243686

/-! ## A147335.P670430497523306456

`A147501(A138988(n+1)-A007093(n))`
-/

namespace A147335.P670430497523306456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147501 (A138988 (n + 1) - A007093 n).toNat

end

end A147335.P670430497523306456

/-! ## A147335.P17201375262824603702

`A147409(n+1)+A006983(A147380(n+1))`
-/

namespace A147335.P17201375262824603702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147409 (n + 1) + A006983 (A147380 (n + 1)).toNat

end

end A147335.P17201375262824603702

/-!
# A147336: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 01000-11100-00111-00010 pattern in any orientation.

The programs for A147336, there is no canonical definition to state claims against.
-/

/-! ## A147336.P10583133725133907854

`A325337(A018896(n)²)`
-/

namespace A147336.P10583133725133907854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A018896 n ^ 2).toNat

end

end A147336.P10583133725133907854

/-! ## A147336.P10956979522661098258

`A212631(A290461(n+1)+1)`
-/

namespace A147336.P10956979522661098258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212631 (A290461 (n + 1) + 1).toNat

end

end A147336.P10956979522661098258

/-! ## A147336.P10356847776425142689

`A325337(A018896(n)*A018896(n))`
-/

namespace A147336.P10356847776425142689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (A018896 n * A018896 n).toNat

end

end A147336.P10356847776425142689

/-! ## A147336.P5618037416507367927

`A325337(A175772(n+1)^A359238(2*n+1))`
-/

namespace A147336.P5618037416507367927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325337 (SequenceMachineLib.roundAway ((A175772 (n + 1) : ℚ) ^ (A359238 (2 * n + 1) : ℤ))).toNat

end

end A147336.P5618037416507367927

/-! ## A147336.P377291463778553667

`A272351(A296231(n))`
-/

namespace A147336.P377291463778553667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272351 (A296231 n).toNat

end

end A147336.P377291463778553667

/-!
# A147337: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 01000-11100-00111-00010 pattern in any orientation.

The programs for A147337, there is no canonical definition to state claims against.
-/

/-! ## A147337.P13089696530620410217

`or(1, A352829(C(n, floor(n/3))))`
-/

namespace A147337.P13089696530620410217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A352829 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat))

end

end A147337.P13089696530620410217

/-! ## A147337.P2455310606337688838

`A002260(A261478(n)²)`
-/

namespace A147337.P2455310606337688838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A261478 n ^ 2).toNat

end

end A147337.P2455310606337688838

/-! ## A147337.P5113993793192137855

`A147080(A005250(n+1))`
-/

namespace A147337.P5113993793192137855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (A005250 (n + 1)).toNat

end

end A147337.P5113993793192137855

/-! ## A147337.P9766895108567143569

`A157458(A001267(n)+1)`
-/

namespace A147337.P9766895108567143569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157458 (A001267 n + 1).toNat

end

end A147337.P9766895108567143569

/-! ## A147337.P10946929337069325040

`A147080(A058320(n+1))`
-/

namespace A147337.P10946929337069325040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147080 (A058320 (n + 1)).toNat

end

end A147337.P10946929337069325040

/-!
# A147338: Number of n X n binary arrays with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147338, there is no canonical definition to state claims against.
-/

/-! ## A147338.P1827328713502432446

`A147340(2*n+3)`
-/

namespace A147338.P1827328713502432446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147340 (2 * n + 3)

end

end A147338.P1827328713502432446

/-! ## A147338.P8706518234342445919

`∏{d}[A062545(n), A147340(#)]`
-/

namespace A147338.P8706518234342445919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147340 d

end

end A147338.P8706518234342445919

/-! ## A147338.P5200962828357524061

`or(1, A147340(A005408(n+1)))`
-/

namespace A147338.P5200962828357524061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147340 (A005408 (n + 1)).toNat)

end

end A147338.P5200962828357524061

/-! ## A147338.P580936383187702373

`or(1, A147340(A144396(n+1)))`
-/

namespace A147338.P580936383187702373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147340 (A144396 (n + 1)).toNat)

end

end A147338.P580936383187702373

/-! ## A147338.P1565801503987976117

`∏{d}[A005408(n+1), A147340(#)]`
-/

namespace A147338.P1565801503987976117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147340 d

end

end A147338.P1565801503987976117

/-!
# A147339: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147339, there is no canonical definition to state claims against.
-/

/-! ## A147339.P7425927795462008052

`A336420(A336420(n)+A036595(n))`
-/

namespace A147339.P7425927795462008052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A336420 n + A036595 n).toNat

end

end A147339.P7425927795462008052

/-! ## A147339.P9819290822236491834

`A325128(A185216(2*n)^A308996(n))`
-/

namespace A147339.P9819290822236491834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325128 (SequenceMachineLib.roundAway ((A185216 (2 * n) : ℚ) ^ (A308996 n : ℤ))).toNat

end

end A147339.P9819290822236491834

/-! ## A147339.P11310025634466186092

`A289436(C(A308958(n+3), A289436(n+3))+2)`
-/

namespace A147339.P11310025634466186092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (Nat.choose (A308958 (n + 3)).toNat (A289436 (n + 3)).toNat + 2)

end

end A147339.P11310025634466186092

/-! ## A147339.P3298110732096361623

`A295907(and(A297330(n+4)*A356264(3*n+1), -2)+1)`
-/

namespace A147339.P3298110732096361623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295907 (Int.land (A297330 (n + 4) * A356264 (3 * n + 1)) (-2) + 1).toNat

end

end A147339.P3298110732096361623

/-!
# A147340: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147340, there is no canonical definition to state claims against.
-/

/-! ## A147340.P1509031351108603903

`A241263(A146450(n+1))`
-/

namespace A147340.P1509031351108603903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241263 (A146450 (n + 1)).toNat

end

end A147340.P1509031351108603903

/-! ## A147340.P9817761627453178797

`∑[and(A131535(n), A234931(n))]`
-/

namespace A147340.P9817761627453178797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A131535 n) (A234931 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147340.P9817761627453178797

/-! ## A147340.P13650370469101696478

`A316355(A245327(A147446(n+1))²)`
-/

namespace A147340.P13650370469101696478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A245327 (A147446 (n + 1)).toNat ^ 2).toNat

end

end A147340.P13650370469101696478

/-!
# A147341: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147341, there is no canonical definition to state claims against.
-/

/-! ## A147341.P5381515835113927209

`A147343(2*(n+2))`
-/

namespace A147341.P5381515835113927209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147343 (2 * (n + 2))

end

end A147341.P5381515835113927209

/-! ## A147341.P1431655927743579742

`or(1, A147343(A144396(n+1)))`
-/

namespace A147341.P1431655927743579742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147343 (A144396 (n + 1)).toNat)

end

end A147341.P1431655927743579742

/-! ## A147341.P18189052888409798461

`A000027(A147343(Δ[n²]+2))`
-/

namespace A147341.P18189052888409798461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat).toNat

end

end A147341.P18189052888409798461

/-! ## A147341.P12088797367319908329

`∏{d}[A144396(n+1), A147343(#)]`
-/

namespace A147341.P12088797367319908329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147343 d

end

end A147341.P12088797367319908329

/-!
# A147342: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147342, there is no canonical definition to state claims against.
-/

/-! ## A147342.P7889403861035278590

`A083107(A146929(n+1))`
-/

namespace A147342.P7889403861035278590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083107 (A146929 (n + 1)).toNat

end

end A147342.P7889403861035278590

/-! ## A147342.P16412993844182847120

`A367141(A147409(n+1))`
-/

namespace A147342.P16412993844182847120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367141 (A147409 (n + 1)).toNat

end

end A147342.P16412993844182847120

/-! ## A147342.P8239118200479850068

`A147409(n+1)+A048002(n+1)`
-/

namespace A147342.P8239118200479850068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147409 (n + 1) + A048002 (n + 1)

end

end A147342.P8239118200479850068

/-! ## A147342.P8492336700251965668

`∑[∑[A219706(A002266(n+1))]]+1`
-/

namespace A147342.P8492336700251965668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219706 (A002266 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A147342.P8492336700251965668

/-! ## A147342.P4291005791466908042

`∑[∑{e}[14*a(n-1), #]]` with `a(0)=2, a(1)=1, a(2)=1, a(3)=-1, a(4)=-1, a(5)=1, a(6)=1, a(7)=1, a(8)=1`
-/

namespace A147342.P4291005791466908042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, -1, -1, 1, 1, 1, 1] fun n f2 =>
  14 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147342.P4291005791466908042

/-!
# A147344: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147344, there is no canonical definition to state claims against.
-/

/-! ## A147344.P12850825148767123632

`A147402(A143826(n+1))%A143826(2*n+3)`
-/

namespace A147344.P12850825148767123632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147402 (A143826 (n + 1)).toNat) (A143826 (2 * n + 3))

end

end A147344.P12850825148767123632

/-!
# A147345: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0100-0100-1111-0010-0010 pattern in any orientation.

The programs for A147345, there is no canonical definition to state claims against.
-/

/-! ## A147345.P1311756922419594785

`A022827(A148826(n))`
-/

namespace A147345.P1311756922419594785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022827 (A148826 n).toNat

end

end A147345.P1311756922419594785

/-! ## A147345.P16249509512150403880

`A299924(A005648(n))`
-/

namespace A147345.P16249509512150403880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299924 (A005648 n).toNat

end

end A147345.P16249509512150403880

/-! ## A147345.P7899305332347944045

`A336468(A148930(n))`
-/

namespace A147345.P7899305332347944045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336468 (A148930 n).toNat

end

end A147345.P7899305332347944045

/-! ## A147345.P15580772405451537260

`A274613(A364198(n))`
-/

namespace A147345.P15580772405451537260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274613 (A364198 n).toNat

end

end A147345.P15580772405451537260

/-! ## A147345.P13022437265804587813

`A039215(A291168(n²))`
-/

namespace A147345.P13022437265804587813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039215 (A291168 (n ^ 2)).toNat

end

end A147345.P13022437265804587813

/-!
# A147346: Number of n X n binary arrays with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147346, there is no canonical definition to state claims against.
-/

/-! ## A147346.P9609452966193388705

`A147348(2*(n+2))`
-/

namespace A147346.P9609452966193388705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147348 (2 * (n + 2))

end

end A147346.P9609452966193388705

/-! ## A147346.P15211479950330318436

`A124741(A115340(n+2))`
-/

namespace A147346.P15211479950330318436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A115340 (n + 2)).toNat

end

end A147346.P15211479950330318436

/-! ## A147346.P5961867032997236843

`A240831(2*A349058(n))`
-/

namespace A147346.P5961867032997236843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240831 (2 * A349058 n).toNat

end

end A147346.P5961867032997236843

/-!
# A147348: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147348, there is no canonical definition to state claims against.
-/

/-! ## A147348.P4220111066010929435

`A075119(A124497(n+1))`
-/

namespace A147348.P4220111066010929435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (A124497 (n + 1)).toNat

end

end A147348.P4220111066010929435

/-! ## A147348.P759466201337483373

`A108948(or(1, A276171(n)))`
-/

namespace A147348.P759466201337483373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108948 (Int.lor 1 (A276171 n)).toNat

end

end A147348.P759466201337483373

/-! ## A147348.P11796011559031489938

`or(1, A261217(A251747(2*n)))`
-/

namespace A147348.P11796011559031489938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A261217 (A251747 (2 * n)).toNat)

end

end A147348.P11796011559031489938

/-! ## A147348.P9035246562223713032

`A333751(A326922(n)+A326493(n+3))`
-/

namespace A147348.P9035246562223713032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 (A326922 n + A326493 (n + 3)).toNat

end

end A147348.P9035246562223713032

/-! ## A147348.P16221346207239045298

`A294962(gcd(A000073(3*(n+1)), A208452(3*n)))`
-/

namespace A147348.P16221346207239045298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294962 (Int.gcd (A000073 (3 * (n + 1))) (A208452 (3 * n)))

end

end A147348.P16221346207239045298

/-!
# A147349: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147349, there is no canonical definition to state claims against.
-/

/-! ## A147349.P4133228215613309881

`A147048(A048486(n+1))`
-/

namespace A147349.P4133228215613309881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147048 (A048486 (n + 1)).toNat

end

end A147349.P4133228215613309881

/-! ## A147349.P17837442464909545247

`A162309(A032162(n+2))`
-/

namespace A147349.P17837442464909545247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (A032162 (n + 2)).toNat

end

end A147349.P17837442464909545247

/-! ## A147349.P16590764189642934730

`A356160(A146449(n+2))`
-/

namespace A147349.P16590764189642934730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356160 (A146449 (n + 2)).toNat

end

end A147349.P16590764189642934730

/-! ## A147349.P5337314316884896974

`A175210(A363046(n)²+1)`
-/

namespace A147349.P5337314316884896974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175210 (A363046 n ^ 2 + 1).toNat

end

end A147349.P5337314316884896974

/-! ## A147349.P18221888599434108555

`A162309(A052525(n+1)+1)`
-/

namespace A147349.P18221888599434108555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (A052525 (n + 1) + 1).toNat

end

end A147349.P18221888599434108555

/-!
# A147350: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147350, there is no canonical definition to state claims against.
-/

/-! ## A147350.P12806287355139311300

`A210524(A147015(n+1))`
-/

namespace A147350.P12806287355139311300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210524 (A147015 (n + 1)).toNat

end

end A147350.P12806287355139311300

/-! ## A147350.P18331923351484876271

`A210524(A147023(n+1))`
-/

namespace A147350.P18331923351484876271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210524 (A147023 (n + 1)).toNat

end

end A147350.P18331923351484876271

/-!
# A147351: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147351, there is no canonical definition to state claims against.
-/

/-! ## A147351.P8148559877746377698

`A354964(A351755(n))`
-/

namespace A147351.P8148559877746377698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354964 (A351755 n).toNat

end

end A147351.P8148559877746377698

/-! ## A147351.P6029897002700229598

`filter[A398364(n), A129686(#)]`
-/

namespace A147351.P6029897002700229598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A129686 (f1 j).toNat = 1) n)

end

end A147351.P6029897002700229598

/-! ## A147351.P1570217487921667171

`filter[A398364(n), A338354(#)]`
-/

namespace A147351.P1570217487921667171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A338354 (f1 j).toNat = 1) n)

end

end A147351.P1570217487921667171

/-! ## A147351.P71615374252099191

`A147501(∑[A306024(n)!])`
-/

namespace A147351.P71615374252099191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A306024 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147351.P71615374252099191

/-! ## A147351.P7189200470752385984

`filter[A398365(n+1), A129686(#)]`
-/

namespace A147351.P7189200470752385984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A129686 (f1 j).toNat = 1) n)

end

end A147351.P7189200470752385984

/-!
# A147352: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 01010-11111-00100 pattern in any orientation.

The programs for A147352, there is no canonical definition to state claims against.
-/

/-! ## A147352.P16897848751721687530

`A351004(A032020(n+1)%A000105(n))`
-/

namespace A147352.P16897848751721687530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351004 (Int.tmod (A032020 (n + 1)) (A000105 n)).toNat

end

end A147352.P16897848751721687530

/-!
# A147353: Number of n X n binary arrays with all ones connected only in a 0110-0110-1111 pattern in any orientation.

The programs for A147353, there is no canonical definition to state claims against.
-/

/-! ## A147353.P6328785746348947452

`A147355(2*n+3)`
-/

namespace A147353.P6328785746348947452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147355 (2 * n + 3)

end

end A147353.P6328785746348947452

/-! ## A147353.P3667334646749875289

`A326291(n+1)+A147355(A144396(n+1))`
-/

namespace A147353.P3667334646749875289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A147355 (A144396 (n + 1)).toNat

end

end A147353.P3667334646749875289

/-! ## A147353.P18154984620411701878

`A147355(A144396(n+1))/A147381(n+1)`
-/

namespace A147353.P18154984620411701878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147355 (A144396 (n + 1)).toNat : ℚ) / (A147381 (n + 1) : ℚ)

end

end A147353.P18154984620411701878

/-! ## A147353.P11959739518361843514

`A147355(A144396(n+1))^A147381(n+2)`
-/

namespace A147353.P11959739518361843514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147355 (A144396 (n + 1)).toNat : ℚ) ^ (A147381 (n + 2) : ℤ)

end

end A147353.P11959739518361843514

/-! ## A147353.P9950445963225792384

`A147355(A144396(n+1))%A001029(n+1)`
-/

namespace A147353.P9950445963225792384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147355 (A144396 (n + 1)).toNat) (A001029 (n + 1))

end

end A147353.P9950445963225792384

/-!
# A147355: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0110-0110-1111 pattern in any orientation.

The programs for A147355, there is no canonical definition to state claims against.
-/

/-! ## A147355.P14304761780502775780

`A274632(A351345(n))`
-/

namespace A147355.P14304761780502775780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274632 (A351345 n).toNat

end

end A147355.P14304761780502775780

/-! ## A147355.P3576745489045864808

`A147415(n+1)+A127324(A000111(n))`
-/

namespace A147355.P3576745489045864808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147415 (n + 1) + A127324 (A000111 n).toNat

end

end A147355.P3576745489045864808

/-! ## A147355.P17603957390213594589

`A319290(A078224(n+1)-A003415(n))`
-/

namespace A147355.P17603957390213594589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (A078224 (n + 1) - A003415 n).toNat

end

end A147355.P17603957390213594589

/-! ## A147355.P11514754319450891288

`A300362(A000051(n)-A073202(n+3))`
-/

namespace A147355.P11514754319450891288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A000051 n - A073202 (n + 3)).toNat

end

end A147355.P11514754319450891288

/-! ## A147355.P13984026551376331070

`A300362(record[A052552(n)]-A073202(n+3))`
-/

namespace A147355.P13984026551376331070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A073202 (n + 3)).toNat

end

end A147355.P13984026551376331070

/-!
# A147356: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0110-0110-1111 pattern in any orientation.

The programs for A147356, there is no canonical definition to state claims against.
-/

/-! ## A147356.P12052479083978103622

`A147477(n+1)+A037824(A000108(n))`
-/

namespace A147356.P12052479083978103622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147477 (n + 1) + A037824 (A000108 n).toNat

end

end A147356.P12052479083978103622

/-! ## A147356.P1427468208209661737

`A147477(n+1)+A037824(A340598(n)+1)`
-/

namespace A147356.P1427468208209661737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147477 (n + 1) + A037824 (A340598 n + 1).toNat

end

end A147356.P1427468208209661737

/-! ## A147356.P553756346893599458

`A281446(A147455(n+1))+A147477(n+1)`
-/

namespace A147356.P553756346893599458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281446 (A147455 (n + 1)).toNat + A147477 (n + 1)

end

end A147356.P553756346893599458

/-! ## A147356.P16417145581130400985

`A147416(n+1)-A156667(A147445(n+1))`
-/

namespace A147356.P16417145581130400985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147416 (n + 1) - A156667 (A147445 (n + 1)).toNat

end

end A147356.P16417145581130400985

/-! ## A147356.P14968647079611222310

`A147416(n+1)-A163123(A147395(n+1))`
-/

namespace A147356.P14968647079611222310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147416 (n + 1) - A163123 (A147395 (n + 1)).toNat

end

end A147356.P14968647079611222310

/-!
# A147357: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0110-0110-1111 pattern in any orientation.

The programs for A147357, there is no canonical definition to state claims against.
-/

/-! ## A147357.P8202172472832869550

`A147417(n+1)+A055641(A147445(n+1))`
-/

namespace A147357.P8202172472832869550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147417 (n + 1) + A055641 (A147445 (n + 1)).toNat

end

end A147357.P8202172472832869550

/-!
# A147358: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 0110-0110-1111 pattern in any orientation.

The programs for A147358, there is no canonical definition to state claims against.
-/

/-! ## A147358.P4509526547835841911

`A122305(A146939(n+1))`
-/

namespace A147358.P4509526547835841911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122305 (A146939 (n + 1)).toNat

end

end A147358.P4509526547835841911

/-! ## A147358.P11295597678443271567

`A122322(A321099(n))`
-/

namespace A147358.P11295597678443271567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122322 (A321099 n).toNat

end

end A147358.P11295597678443271567

/-! ## A147358.P913724718994500262

`A280814(∑{d}[A147408(n+1), #])`
-/

namespace A147358.P913724718994500262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280814 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A147358.P913724718994500262

/-! ## A147358.P6617944148005665403

`A286134(A007716(n))+A068038(n)`
-/

namespace A147358.P6617944148005665403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286134 (A007716 n).toNat + A068038 n

end

end A147358.P6617944148005665403

/-!
# A147360: Number of n X n binary arrays with all ones connected only in a 01110-11111 pattern in any orientation.

The programs for A147360, there is no canonical definition to state claims against.
-/

/-! ## A147360.P13035819557773394073

`A147362(2*(n+2))`
-/

namespace A147360.P13035819557773394073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147362 (2 * (n + 2))

end

end A147360.P13035819557773394073

/-!
# A147363: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 01110-11111 pattern in any orientation.

The programs for A147363, there is no canonical definition to state claims against.
-/

/-! ## A147363.P15677533395556460562

`A147365(2*(n+2))`
-/

namespace A147363.P15677533395556460562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147365 (2 * (n + 2))

end

end A147363.P15677533395556460562

/-! ## A147363.P17839454126354595664

`A147365(A004277(n+2))%A005010(n)`
-/

namespace A147363.P17839454126354595664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147365 (A004277 (n + 2)).toNat) (A005010 n)

end

end A147363.P17839454126354595664

/-! ## A147363.P16422793543952266914

`or(A135313(n), A147365(A193175(n+1)))`
-/

namespace A147363.P16422793543952266914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135313 n) (A147365 (A193175 (n + 1)).toNat)

end

end A147363.P16422793543952266914

/-! ## A147363.P16654047258744476949

`A147365(A193175(n+1))/A193179(n+2)`
-/

namespace A147363.P16654047258744476949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147365 (A193175 (n + 1)).toNat : ℚ) / (A193179 (n + 2) : ℚ)

end

end A147363.P16654047258744476949

/-! ## A147363.P4737755062223185648

`A147365(A193175(n+1))%A193181(n+1)`
-/

namespace A147363.P4737755062223185648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147365 (A193175 (n + 1)).toNat) (A193181 (n + 1))

end

end A147363.P4737755062223185648

/-!
# A147364: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 01110-11111 pattern in any orientation.

The programs for A147364, there is no canonical definition to state claims against.
-/

/-! ## A147364.P7351643468897229224

`A147063(n+1)-A051777(A147057(n+1))`
-/

namespace A147364.P7351643468897229224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147063 (n + 1) - A051777 (A147057 (n + 1)).toNat

end

end A147364.P7351643468897229224

/-!
# A147366: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 01110-11111 pattern in any orientation.

The programs for A147366, there is no canonical definition to state claims against.
-/

/-! ## A147366.P14100701870499999773

`A034888(xor(A151904(n), A320797(n)))`
-/

namespace A147366.P14100701870499999773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (Int.xor (A151904 n) (A320797 n)).toNat

end

end A147366.P14100701870499999773

/-!
# A147368: Number of n X n binary arrays with all ones connected only in a 0111-1100-0111 pattern in any orientation.

The programs for A147368, there is no canonical definition to state claims against.
-/

/-! ## A147368.P572068551801449273

`A147370(2*(n+2))`
-/

namespace A147368.P572068551801449273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147370 (2 * (n + 2))

end

end A147368.P572068551801449273

/-! ## A147368.P12084769354940532517

`A102889(a(n-1))+6` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A147368.P12084769354940532517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A102889 (a (n - 1)).toNat + 6

end

end A147368.P12084769354940532517

/-!
# A147370: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 0111-1100-0111 pattern in any orientation.

The programs for A147370, there is no canonical definition to state claims against.
-/

/-! ## A147370.P10066552697699845132

`A007737(A325869(n+4)%A037221(n+5))`
-/

namespace A147370.P10066552697699845132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (Int.tmod (A325869 (n + 4)) (A037221 (n + 5))).toNat

end

end A147370.P10066552697699845132

/-!
# A147371: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 0111-1100-0111 pattern in any orientation.

The programs for A147371, there is no canonical definition to state claims against.
-/

/-! ## A147371.P7768030168714705992

`A147373(2*(n+2))`
-/

namespace A147371.P7768030168714705992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147373 (2 * (n + 2))

end

end A147371.P7768030168714705992

/-! ## A147371.P2168878098735490892

`A342441(A146050(n+1)%A167614(n+1))`
-/

namespace A147371.P2168878098735490892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (Int.tmod (A146050 (n + 1)) (A167614 (n + 1))).toNat

end

end A147371.P2168878098735490892

/-! ## A147371.P5109123149413229753

`xor(A001877(A147431(n+3)), A147431(n+1))`
-/

namespace A147371.P5109123149413229753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001877 (A147431 (n + 3)).toNat) (A147431 (n + 1))

end

end A147371.P5109123149413229753

/-! ## A147371.P3467144664790246099

`A003986(Δ[ceil(n^(3/2))]^round(n²/12))`
-/

namespace A147371.P3467144664790246099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) ^ (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12) : ℤ))).toNat

end

end A147371.P3467144664790246099

/-! ## A147371.P4515674770004603101

`A195099(A393247(n))`
-/

namespace A147371.P4515674770004603101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (A393247 n).toNat

end

end A147371.P4515674770004603101

/-!
# A147372: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 0111-1100-0111 pattern in any orientation.

The programs for A147372, there is no canonical definition to state claims against.
-/

/-! ## A147372.P12981548020038328348

`A184425(A147071(n+2))`
-/

namespace A147372.P12981548020038328348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184425 (A147071 (n + 2)).toNat

end

end A147372.P12981548020038328348

/-! ## A147372.P312849893404307887

`A158366(A146678(n+1))`
-/

namespace A147372.P312849893404307887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A146678 (n + 1)).toNat

end

end A147372.P312849893404307887

/-! ## A147372.P8843965431702631771

`A158366(A147440(n+1))`
-/

namespace A147372.P8843965431702631771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A147440 (n + 1)).toNat

end

end A147372.P8843965431702631771

/-! ## A147372.P15119936400572666079

`A147478(n+1)+A055641(A147445(n+1))`
-/

namespace A147372.P15119936400572666079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147478 (n + 1) + A055641 (A147445 (n + 1)).toNat

end

end A147372.P15119936400572666079

/-! ## A147372.P14492286804555418165

`A335453(A147485(n+1))+A147478(n+1)`
-/

namespace A147372.P14492286804555418165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (A147485 (n + 1)).toNat + A147478 (n + 1)

end

end A147372.P14492286804555418165

/-!
# A147375: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 0111-1100-0111 pattern in any orientation.

The programs for A147375, there is no canonical definition to state claims against.
-/

/-! ## A147375.P6221543318344308615

`A053036(A007477(n)+1)-A309684(n)`
-/

namespace A147375.P6221543318344308615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053036 (A007477 n + 1).toNat - A309684 n

end

end A147375.P6221543318344308615

/-!
# A147376: Number of n X n binary arrays with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147376, there is no canonical definition to state claims against.
-/

/-! ## A147376.P7656614116763836945

`A147378(2*n+3)`
-/

namespace A147376.P7656614116763836945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147378 (2 * n + 3)

end

end A147376.P7656614116763836945

/-! ## A147376.P5909157899229994409

`or(1, A147378(A144396(n+1)))`
-/

namespace A147376.P5909157899229994409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147378 (A144396 (n + 1)).toNat)

end

end A147376.P5909157899229994409

/-! ## A147376.P6890310548308028918

`or(1, A147378(A346302(n+1)))`
-/

namespace A147376.P6890310548308028918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147378 (A346302 (n + 1)).toNat)

end

end A147376.P6890310548308028918

/-! ## A147376.P9918742048904057030

`∏{d}[A144396(n+1), A147378(#)]`
-/

namespace A147376.P9918742048904057030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147378 d

end

end A147376.P9918742048904057030

/-! ## A147376.P4241952057458451024

`A147378(A144396(n+1))/A147381(n+1)`
-/

namespace A147376.P4241952057458451024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147378 (A144396 (n + 1)).toNat : ℚ) / (A147381 (n + 1) : ℚ)

end

end A147376.P4241952057458451024

/-!
# A147377: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147377, there is no canonical definition to state claims against.
-/

/-! ## A147377.P15708270905490432485

`A332635(C(A008330(n+5), A332639(n)))`
-/

namespace A147377.P15708270905490432485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332635 (Nat.choose (A008330 (n + 5)).toNat (A332639 n).toNat)

end

end A147377.P15708270905490432485

/-!
# A147379: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147379, there is no canonical definition to state claims against.
-/

/-! ## A147379.P7638203877801695683

`A147381(2*n+3)`
-/

namespace A147379.P7638203877801695683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147381 (2 * n + 3)

end

end A147379.P7638203877801695683

/-! ## A147379.P1714752006710522453

`or(1, A147381(A144396(n+1)))`
-/

namespace A147379.P1714752006710522453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147381 (A144396 (n + 1)).toNat)

end

end A147379.P1714752006710522453

/-! ## A147379.P2290177123546680146

`or(1, A147381(A346302(n+1)))`
-/

namespace A147379.P2290177123546680146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147381 (A346302 (n + 1)).toNat)

end

end A147379.P2290177123546680146

/-! ## A147379.P5425941366975514421

`A000027(A147381(Δ[n²]+2))`
-/

namespace A147379.P5425941366975514421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147381 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat).toNat

end

end A147379.P5425941366975514421

/-! ## A147379.P16192735132363975372

`∏{d}[A144396(n+1), A147381(#)]`
-/

namespace A147379.P16192735132363975372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A147381 d

end

end A147379.P16192735132363975372

/-!
# A147380: Number of n X n binary arrays symmetric about both diagonal and antidiagonal with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147380, there is no canonical definition to state claims against.
-/

/-! ## A147380.P12663474974013457330

`A101435(A147079(n+1))`
-/

namespace A147380.P12663474974013457330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101435 (A147079 (n + 1)).toNat

end

end A147380.P12663474974013457330

/-!
# A147381: Number of n X n binary arrays symmetric about the diagonal and under 90 degree rotation with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147381, there is no canonical definition to state claims against.
-/

/-! ## A147381.P2402309370147903167

`A104464(A146906(n+1))`
-/

namespace A147381.P2402309370147903167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104464 (A146906 (n + 1)).toNat

end

end A147381.P2402309370147903167

/-!
# A147383: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 10000-11100-00111-00001 pattern in any orientation.

The programs for A147383, there is no canonical definition to state claims against.
-/

/-! ## A147383.P16969490542260769658

`A046074(ceil(2^(n-1))+(n-1)^(n%2))`
-/

namespace A147383.P16969490542260769658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + ((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A147383.P16969490542260769658

/-! ## A147383.P8331054418103216654

`A338764(A348928(n!))`
-/

namespace A147383.P8331054418103216654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338764 (A348928 (Nat.factorial n)).toNat

end

end A147383.P8331054418103216654

/-! ## A147383.P939419797134630863

`A046074(A172285(n)+1)`
-/

namespace A147383.P939419797134630863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A172285 n + 1).toNat

end

end A147383.P939419797134630863

/-! ## A147383.P732590272459451259

`A046074(A216958(n+1))`
-/

namespace A147383.P732590272459451259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A216958 (n + 1)).toNat

end

end A147383.P732590272459451259

/-! ## A147383.P12820184962178516816

`A046074(A268649(n+1))`
-/

namespace A147383.P12820184962178516816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (A268649 (n + 1)).toNat

end

end A147383.P12820184962178516816

/-!
# A147384: Number of n X n binary arrays with all ones connected only in a 10001-11111-00100 pattern in any orientation.

The programs for A147384, there is no canonical definition to state claims against.
-/

/-! ## A147384.P635501542362875287

`A337254(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=13`
-/

namespace A147384.P635501542362875287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 13] fun n a =>
  A337254 (a (n - 1)).toNat

end

end A147384.P635501542362875287

/-! ## A147384.P11460276304607475198

`A161206(A034380(n!))`
-/

namespace A147384.P11460276304607475198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161206 (A034380 (Nat.factorial n)).toNat

end

end A147384.P11460276304607475198

/-! ## A147384.P618315029208270606

`A114395(A228956(n+1))`
-/

namespace A147384.P618315029208270606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114395 (A228956 (n + 1)).toNat

end

end A147384.P618315029208270606

/-!
# A147386: Number of n X n binary arrays symmetric under horizontal and vertical reflection with all ones connected only in a 10001-11111-00100 pattern in any orientation.

The programs for A147386, there is no canonical definition to state claims against.
-/

/-! ## A147386.P16918941650163082920

`∏{p}[A061358(A093379(n)), #]`
-/

namespace A147386.P16918941650163082920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A093379 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A147386.P16918941650163082920

/-! ## A147386.P6570296690249357926

`A077028(A038505(n*A029350(n)))`
-/

namespace A147386.P6570296690249357926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A038505 ((n : ℤ) * A029350 n).toNat).toNat

end

end A147386.P6570296690249357926

/-! ## A147386.P4870030837130171729

`A077028(A038518(n*A029350(n)))`
-/

namespace A147386.P4870030837130171729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A038518 ((n : ℤ) * A029350 n).toNat).toNat

end

end A147386.P4870030837130171729

/-! ## A147386.P7855975757352976620

`A077028(A038505(n*A066057(n)))`
-/

namespace A147386.P7855975757352976620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A038505 ((n : ℤ) * A066057 n).toNat).toNat

end

end A147386.P7855975757352976620

/-! ## A147386.P5993118657102760105

`A077028(A038518(n*A066057(n)))`
-/

namespace A147386.P5993118657102760105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A038518 ((n : ℤ) * A066057 n).toNat).toNat

end

end A147386.P5993118657102760105

/-!
# A147387: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 10001-11111-00100 pattern in any orientation.

The programs for A147387, there is no canonical definition to state claims against.
-/

/-! ## A147387.P15582452774853356892

`A147389(2*(n+2))`
-/

namespace A147387.P15582452774853356892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147389 (2 * (n + 2))

end

end A147387.P15582452774853356892

/-! ## A147387.P7396233694268593121

`A277025(A147006(n+1))`
-/

namespace A147387.P7396233694268593121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A147006 (n + 1)).toNat

end

end A147387.P7396233694268593121

/-! ## A147387.P5538040489945105692

`A344651(xor(A062112(n), A344651(n+4)))`
-/

namespace A147387.P5538040489945105692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344651 (Int.xor (A062112 n) (A344651 (n + 4))).toNat

end

end A147387.P5538040489945105692

/-!
# A147390: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 10001-11111-00100 pattern in any orientation.

The programs for A147390, there is no canonical definition to state claims against.
-/

/-! ## A147390.P12208366634753417739

`A316894(A347779(n))`
-/

namespace A147390.P12208366634753417739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316894 (A347779 n).toNat

end

end A147390.P12208366634753417739

/-! ## A147390.P9939542421000427501

`A305844(A187065(n+2))%p?[2*n+1]`
-/

namespace A147390.P9939542421000427501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305844 (A187065 (n + 2)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A147390.P9939542421000427501

/-! ## A147390.P516903076870081521

`A123302(A000931(n)*A238662(n+1))`
-/

namespace A147390.P516903076870081521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123302 (A000931 n * A238662 (n + 1)).toNat

end

end A147390.P516903076870081521

/-!
# A147391: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 10001-11111-00100 pattern in any orientation.

The programs for A147391, there is no canonical definition to state claims against.
-/

/-! ## A147391.P17420026721560798446

`A286543(A250474(n+1)*A335472(n))`
-/

namespace A147391.P17420026721560798446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286543 (A250474 (n + 1) * A335472 n).toNat

end

end A147391.P17420026721560798446

/-! ## A147391.P12319156132838122013

`A286543(lcm(A250474(n+1), A335472(n)))`
-/

namespace A147391.P12319156132838122013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286543 (Int.lcm (A250474 (n + 1)) (A335472 n))

end

end A147391.P12319156132838122013

/-!
# A147392: Number of n X n binary arrays with all ones connected only in a 1000-1000-1111-0001-0001 pattern in any orientation.

The programs for A147392, there is no canonical definition to state claims against.
-/

/-! ## A147392.P14022880503589092920

`A178334(A054485(n)+n²)`
-/

namespace A147392.P14022880503589092920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A054485 n + (n ^ 2 : ℤ)).toNat

end

end A147392.P14022880503589092920

/-! ## A147392.P11700359202669925311

`A151747((1-char[1]+n)^A353392(n))`
-/

namespace A147392.P11700359202669925311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (SequenceMachineLib.roundAway ((1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ) : ℚ) ^ (A353392 n : ℤ))).toNat

end

end A147392.P11700359202669925311

/-! ## A147392.P5863030758911794723

`A178334(A167614(n+1)+A054485(n))`
-/

namespace A147392.P5863030758911794723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A167614 (n + 1) + A054485 n).toNat

end

end A147392.P5863030758911794723

/-! ## A147392.P10557721206522107025

`A178334(A238795(n+1)+A054485(n))`
-/

namespace A147392.P10557721206522107025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A238795 (n + 1) + A054485 n).toNat

end

end A147392.P10557721206522107025

/-!
# A147393: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1000-1111-0001-0001 pattern in any orientation.

The programs for A147393, there is no canonical definition to state claims against.
-/

/-! ## A147393.P7054196920309730936

`A280506(A059300(n)*A213005(n))`
-/

namespace A147393.P7054196920309730936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280506 (A059300 n * A213005 n).toNat

end

end A147393.P7054196920309730936

/-! ## A147393.P7544674141372297234

`A093714(A011971(n)^A332281(n+2))`
-/

namespace A147393.P7544674141372297234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093714 (SequenceMachineLib.roundAway ((A011971 n : ℚ) ^ (A332281 (n + 2) : ℤ))).toNat

end

end A147393.P7544674141372297234

/-!
# A147394: Number of n X n binary arrays symmetric about main diagonal with all ones connected only in a 1000-1000-1111-0001-0001 pattern in any orientation.

The programs for A147394, there is no canonical definition to state claims against.
-/

/-! ## A147394.P839917984777121483

`A392969(A146369(n+2))`
-/

namespace A147394.P839917984777121483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392969 (A146369 (n + 2)).toNat

end

end A147394.P839917984777121483

/-! ## A147394.P17748303673673279726

`A392969(A146377(n+2))`
-/

namespace A147394.P17748303673673279726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392969 (A146377 (n + 2)).toNat

end

end A147394.P17748303673673279726

/-!
# A147395: Number of n X n binary arrays symmetric under 90 degree rotation with all ones connected only in a 1000-1000-1111-0001-0001 pattern in any orientation.

The programs for A147395, there is no canonical definition to state claims against.
-/

/-! ## A147395.P1513148250238502565

`A134478(A051223(n+1)*A134478(n))`
-/

namespace A147395.P1513148250238502565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A051223 (n + 1) * A134478 n).toNat

end

end A147395.P1513148250238502565

/-! ## A147395.P11376081543102453067

`A088515(A054252(n)^A054710(n+1))`
-/

namespace A147395.P11376081543102453067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088515 (SequenceMachineLib.roundAway ((A054252 n : ℚ) ^ (A054710 (n + 1) : ℤ))).toNat

end

end A147395.P11376081543102453067

/-! ## A147395.P12767286216805745137

`A236508(A007530(n+1))^A236511(n+1)`
-/

namespace A147395.P12767286216805745137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236508 (A007530 (n + 1)).toNat : ℚ) ^ (A236511 (n + 1) : ℤ)

end

end A147395.P12767286216805745137

/-! ## A147395.P14901013117582090301

`A003558(C(A066417(2*(n+2)), A326530(n)))`
-/

namespace A147395.P14901013117582090301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (Nat.choose (A066417 (2 * (n + 2))).toNat (A326530 n).toNat)

end

end A147395.P14901013117582090301

/-! ## A147395.P4632471530049903177

`A032559(A127193(n+1))%A249745(3*n+5)`
-/

namespace A147395.P4632471530049903177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032559 (A127193 (n + 1)).toNat) (A249745 (3 * n + 5))

end

end A147395.P4632471530049903177

/-!
# A147396: Number of n X n binary arrays symmetric under 180 degree rotation with all ones connected only in a 1000-1000-1111-0001-0001 pattern in any orientation.

The programs for A147396, there is no canonical definition to state claims against.
-/

/-! ## A147396.P9187872892635703185

`A016813(A283877(n)-A368422(n))`
-/

namespace A147396.P9187872892635703185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A283877 n - A368422 n).toNat

end

end A147396.P9187872892635703185

/-! ## A147396.P15387249079906865739

`gcd(A001803(3*n), A327014(A240496(n)))`
-/

namespace A147396.P15387249079906865739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001803 (3 * n)) (A327014 (A240496 n).toNat)

end

end A147396.P15387249079906865739

/-! ## A147396.P10121601650654579010

`A146379(n+1)+A128749(A146379(n+1))`
-/

namespace A147396.P10121601650654579010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146379 (n + 1) + A128749 (A146379 (n + 1)).toNat

end

end A147396.P10121601650654579010

/-! ## A147396.P17693147666948608458

`A258019(A147029(n+1))+A147086(n+1)`
-/

namespace A147396.P17693147666948608458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258019 (A147029 (n + 1)).toNat + A147086 (n + 1)

end

end A147396.P17693147666948608458

/-! ## A147396.P5838683709520244279

`A157966(A007827(n))`
-/

namespace A147396.P5838683709520244279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A007827 n).toNat

end

end A147396.P5838683709520244279

/-!
# A147397: Number of n X n binary arrays with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147397, there is no canonical definition to state claims against.
-/

/-! ## A147397.P5573412782708437796

`A147399(2*(n+2))`
-/

namespace A147397.P5573412782708437796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147399 (2 * (n + 2))

end

end A147397.P5573412782708437796

/-! ## A147397.P4015938651794063428

`or(1, A147399(A103517(n+1)))`
-/

namespace A147397.P4015938651794063428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A147399 (A103517 (n + 1)).toNat)

end

end A147397.P4015938651794063428

/-! ## A147397.P3103716627555965558

`A147399(n+4+n)/A147402(n+1)`
-/

namespace A147397.P3103716627555965558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147399 (n + 4 + n) : ℚ) / (A147402 (n + 1) : ℚ)

end

end A147397.P3103716627555965558

/-! ## A147397.P3930224259056198222

`A147399(A103517(n+1))^A147402(n+1)`
-/

namespace A147397.P3930224259056198222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147399 (A103517 (n + 1)).toNat : ℚ) ^ (A147402 (n + 1) : ℤ)

end

end A147397.P3930224259056198222

/-! ## A147397.P1279282744668556115

`A147399(A103517(n+1))^A147433(n+1)`
-/

namespace A147397.P1279282744668556115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147399 (A103517 (n + 1)).toNat : ℚ) ^ (A147433 (n + 1) : ℤ)

end

end A147397.P1279282744668556115

/-!
# A147398: Number of n X n binary arrays symmetric under horizontal reflection with all ones connected only in a 1000-1110-0111-0001 pattern in any orientation.

The programs for A147398, there is no canonical definition to state claims against.
-/

/-! ## A147398.P5500555368502770415

`A147024(A035948(n))`
-/

namespace A147398.P5500555368502770415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (A035948 n).toNat

end

end A147398.P5500555368502770415

/-! ## A147398.P13660261647208568261

`A147024(A115029(n))`
-/

namespace A147398.P13660261647208568261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (A115029 n).toNat

end

end A147398.P13660261647208568261

/-! ## A147398.P2222626208724284162

`A147024(A258939(n))`
-/

namespace A147398.P2222626208724284162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (A258939 n).toNat

end

end A147398.P2222626208724284162

/-! ## A147398.P13599537457122601133

`A082004(A147339(n+1))`
-/

namespace A147398.P13599537457122601133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082004 (A147339 (n + 1)).toNat

end

end A147398.P13599537457122601133

/-! ## A147398.P11784418055496330420

`A147024(A226811(n+1))`
-/

namespace A147398.P11784418055496330420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147024 (A226811 (n + 1)).toNat

end

end A147398.P11784418055496330420

