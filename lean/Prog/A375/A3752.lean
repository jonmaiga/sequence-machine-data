import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A375200: Irregular triangular array read by rows. The n-th row gives the elementary divisors of the group of units in the quotient ring F_2[x]/.

The programs for A375200, there is no canonical definition to state claims against.
-/

/-! ## A375200.P1747489306090680129

`A037445(A093831(n+2))/2`
-/

namespace A375200.P1747489306090680129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (A093831 (n + 2)).toNat : ℚ) / 2

end

end A375200.P1747489306090680129

/-! ## A375200.P10951963239970220180

`A003642(A180673(n)+A005384(2*n+1))`
-/

namespace A375200.P10951963239970220180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003642 (A180673 n + A005384 (2 * n + 1)).toNat

end

end A375200.P10951963239970220180

/-! ## A375200.P4938121527292600539

`A001227(A094698(2*n+5)-A066099(2*n+3))`
-/

namespace A375200.P4938121527292600539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A094698 (2 * n + 5) - A066099 (2 * n + 3)).toNat

end

end A375200.P4938121527292600539

/-! ## A375200.P725874992314655898

`A100374(A394464(n+4))`
-/

namespace A375200.P725874992314655898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100374 (A394464 (n + 4)).toNat

end

end A375200.P725874992314655898

/-! ## A375200.P10332315140938391507

`A034444(A158776(n)-A008592(n))`
-/

namespace A375200.P10332315140938391507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A158776 n - A008592 n).toNat

end

end A375200.P10332315140938391507

/-!
# A375202: a(n) is the least integer x >= 0 such that n = x^2 + y^2 + z^2 for some integers y, z, or -1 if there is no such x.

The programs for A375202, there is no canonical definition to state claims against.
-/

/-! ## A375202.P15169022359925432197

`A064874(n*A071374(n))-A072401(n)`
-/

namespace A375202.P15169022359925432197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 ((n : ℤ) * A071374 n).toNat - A072401 n

end

end A375202.P15169022359925432197

/-! ## A375202.P9360068288105670207

`A064874(n)+A014053(3*n+1)*A153990(A189076(n))`
-/

namespace A375202.P9360068288105670207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n + A014053 (3 * n + 1) * A153990 (A189076 n).toNat

end

end A375202.P9360068288105670207

/-!
# A375203: Positions of records in A375202.

The programs for A375203, there is no canonical definition to state claims against.
-/

/-! ## A375203.P14590425774731388598

`A243190(A321126(n)*A374747(n))`
-/

namespace A375203.P14590425774731388598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243190 (A321126 n * A374747 n).toNat

end

end A375203.P14590425774731388598

/-!
# A375204: Record values in A375202.

The programs for A375204, there is no canonical definition to state claims against.
-/

/-! ## A375204.P8268512182739663987

`eq[A306286(n), A365394(n)]`
-/

namespace A375204.P8268512182739663987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375204.P8268512182739663987

/-! ## A375204.P631356396915681216

`eq[A294442(n), A369459(n)]`
-/

namespace A375204.P631356396915681216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369459 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375204.P631356396915681216

/-! ## A375204.P1479481576306571805

`eq[A069010(n), A082498(n)]`
-/

namespace A375204.P1479481576306571805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375204.P1479481576306571805

/-! ## A375204.P10487497849234169343

`eq[A075897(n), A309026(n)]`
-/

namespace A375204.P10487497849234169343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075897 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375204.P10487497849234169343

/-! ## A375204.P7959044147166008536

`eq[A016727(n), A397441(n)]`
-/

namespace A375204.P7959044147166008536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375204.P7959044147166008536

/-!
# A375205: PrimePi(greatest prime < sqrt(Q)) - PrimePi(greatest prime factor(Q) < sqrt(Q)), with Q = A082686(n).

The programs for A375205, there is no canonical definition to state claims against.
-/

/-! ## A375205.P18101075764327465366

`A060950(A085860(n)+A045690(n+1))`
-/

namespace A375205.P18101075764327465366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A085860 n + A045690 (n + 1)).toNat

end

end A375205.P18101075764327465366

/-! ## A375205.P4534980188593931613

`A350847(A010051(n+1)+A000203(2*(n+2)))`
-/

namespace A375205.P4534980188593931613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A010051 (n + 1) + A000203 (2 * (n + 2))).toNat

end

end A375205.P4534980188593931613

/-! ## A375205.P7470748761363897340

`A350847(A080339(n+1)+A000203(2*(n+2)))`
-/

namespace A375205.P7470748761363897340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350847 (A080339 (n + 1) + A000203 (2 * (n + 2))).toNat

end

end A375205.P7470748761363897340

/-! ## A375205.P1640197931660270194

`A093321(gcd(A013929(n+1), A100357(n+1)))`
-/

namespace A375205.P1640197931660270194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093321 (Int.gcd (A013929 (n + 1)) (A100357 (n + 1)))

end

end A375205.P1640197931660270194

/-! ## A375205.P4677710087065473578

`A316826(A197450(2*(n+1))+A051377(n+1))`
-/

namespace A375205.P4677710087065473578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316826 (A197450 (2 * (n + 1)) + A051377 (n + 1)).toNat

end

end A375205.P4677710087065473578

/-!
# A375211: Complement of A129459.

The programs for A375211, there is no canonical definition to state claims against.
-/

/-! ## A375211.P6063611822320066807

`comp[A129459(n)]`
-/

namespace A375211.P6063611822320066807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129459 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375211.P6063611822320066807

/-! ## A375211.P11371408910931429833

`eq[char[A129459(n+1)], A000007(n)]`
-/

namespace A375211.P11371408910931429833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129459 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A375211.P11371408910931429833

/-! ## A375211.P14348310898370856618

`eq[char[A129459(n)], A036987(2*(n+2))]`
-/

namespace A375211.P14348310898370856618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129459 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A375211.P14348310898370856618

/-!
# A375212: a(n) is the product of the leading base-3 digit of n and the sum of the squares of its base-3 digits.

The programs for A375212, there is no canonical definition to state claims against.
-/

/-! ## A375212.P3708569400862575087

`A376270(A140316(n+1))`
-/

namespace A375212.P3708569400862575087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376270 (A140316 (n + 1)).toNat

end

end A375212.P3708569400862575087

/-! ## A375212.P4689669981529604304

`A376270(A007089(n+1))`
-/

namespace A375212.P4689669981529604304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376270 (A007089 (n + 1)).toNat

end

end A375212.P4689669981529604304

/-!
# A375213: Even numbers with equal numbers of even and odd digits.

The programs for A375213, there is no canonical definition to state claims against.
-/

/-! ## A375213.P7008223750508435259

`∩[2*n, A227870(n+1)]`
-/

namespace A375213.P7008223750508435259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P7008223750508435259

/-! ## A375213.P2919263731136297603

`filter[A227870(n+1), A059841(#)]`
-/

namespace A375213.P2919263731136297603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A375213.P2919263731136297603

/-! ## A375213.P17690461135672697356

`∩[A227870(n+1), A004271(n)]`
-/

namespace A375213.P17690461135672697356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P17690461135672697356

/-! ## A375213.P17215217841369018938

`∩[A227870(n+1), A004272(n)]`
-/

namespace A375213.P17215217841369018938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P17215217841369018938

/-! ## A375213.P279695081200840209

`∩[A227870(n+1), A004275(n)]`
-/

namespace A375213.P279695081200840209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P279695081200840209

/-! ## A375213.P8937838521033303050

`∩[A227870(n+1), A004277(n)]`
-/

namespace A375213.P8937838521033303050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P8937838521033303050

/-! ## A375213.P3884023313318139040

`∩[A227870(n+1), A004279(n)]`
-/

namespace A375213.P3884023313318139040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P3884023313318139040

/-! ## A375213.P13931664010680748411

`∩[A227870(n+1), A005843(n)]`
-/

namespace A375213.P13931664010680748411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P13931664010680748411

/-! ## A375213.P5003813029681469973

`∩[A227870(n+1), A020739(n)]`
-/

namespace A375213.P5003813029681469973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P5003813029681469973

/-! ## A375213.P10006389499940218631

`∩[A227870(n+1), A020744(n)]`
-/

namespace A375213.P10006389499940218631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375213.P10006389499940218631

/-! ## A375213.P1309531359048420258

`eq[A052928(n+1), A355504(n)]`
-/

namespace A375213.P1309531359048420258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375213.P1309531359048420258

/-!
# A375214: Odd numbers with equal numbers of even and odd digits.

The programs for A375214, there is no canonical definition to state claims against.
-/

/-! ## A375214.P16610647128135221955

`∩[2*n+1, A227870(n+1)]`
-/

namespace A375214.P16610647128135221955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P16610647128135221955

/-! ## A375214.P14388608178642012298

`filter[A227870(n+1), A000035(#)]`
-/

namespace A375214.P14388608178642012298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A375214.P14388608178642012298

/-! ## A375214.P6495673617081058838

`filter[A227870(n+1), A266070(#)]`
-/

namespace A375214.P6495673617081058838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A375214.P6495673617081058838

/-! ## A375214.P17625428798012943693

`filter[A227870(n+1), A266246(#)]`
-/

namespace A375214.P17625428798012943693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A375214.P17625428798012943693

/-! ## A375214.P5962382138631163781

`filter[A227870(n+1), A266444(#)]`
-/

namespace A375214.P5962382138631163781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A375214.P5962382138631163781

/-! ## A375214.P12594274008408496205

`filter[A227870(n+1), A266611(#)]`
-/

namespace A375214.P12594274008408496205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A375214.P12594274008408496205

/-! ## A375214.P12293246690137686728

`filter[A227870(n+1), A266719(#)]`
-/

namespace A375214.P12293246690137686728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A375214.P12293246690137686728

/-! ## A375214.P10026931871502744493

`filter[A227870(n+1), A267155(#)]`
-/

namespace A375214.P10026931871502744493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267155 (f1 j).toNat = 1) n)

end

end A375214.P10026931871502744493

/-! ## A375214.P12962093934472849485

`filter[A227870(n+1), A267256(#)]`
-/

namespace A375214.P12962093934472849485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A375214.P12962093934472849485

/-! ## A375214.P16996785808867529571

`filter[A227870(n+1), A272664(#)]`
-/

namespace A375214.P16996785808867529571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A375214.P16996785808867529571

/-! ## A375214.P795390382116046835

`filter[A227870(n+1), A296066(#)]`
-/

namespace A375214.P795390382116046835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A375214.P795390382116046835

/-! ## A375214.P16439517556420005045

`filter[A227870(n+2), A266789(#)]`
-/

namespace A375214.P16439517556420005045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A375214.P16439517556420005045

/-! ## A375214.P83865969874320997

`∩[A227870(n+1), A004273(n)]`
-/

namespace A375214.P83865969874320997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P83865969874320997

/-! ## A375214.P15822466690889030544

`∩[A227870(n+1), A004274(n)]`
-/

namespace A375214.P15822466690889030544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P15822466690889030544

/-! ## A375214.P11010785545183568219

`∩[A227870(n+1), A004276(n)]`
-/

namespace A375214.P11010785545183568219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P11010785545183568219

/-! ## A375214.P8350955313254399271

`∩[A227870(n+1), A004281(n)]`
-/

namespace A375214.P8350955313254399271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P8350955313254399271

/-! ## A375214.P10438890802946489990

`∩[A227870(n+1), A020742(n)]`
-/

namespace A375214.P10438890802946489990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P10438890802946489990

/-! ## A375214.P10348280012684284871

`∩[A227870(n+1), A004271(n)+1]`
-/

namespace A375214.P10348280012684284871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P10348280012684284871

/-! ## A375214.P11326425839000180147

`∩[A227870(n+1), A004272(n)+1]`
-/

namespace A375214.P11326425839000180147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P11326425839000180147

/-! ## A375214.P17752588946019104201

`∩[A227870(n+1), A004275(n)+1]`
-/

namespace A375214.P17752588946019104201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375214.P17752588946019104201

/-!
# A375216: n is the a(n)-th nonnegative integer having its multiset of binary digits.

The programs for A375216, there is no canonical definition to state claims against.
-/

/-! ## A375216.P4477818561695706996

`A079071(n)+1`
-/

namespace A375216.P4477818561695706996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 n + 1

end

end A375216.P4477818561695706996

/-! ## A375216.P5604404212837077308

`A263328(n)-(A263328(A073137(n))-1)`
-/

namespace A375216.P5604404212837077308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263328 n - (A263328 (A073137 n).toNat - 1)

end

end A375216.P5604404212837077308

/-! ## A375216.P10868038081582391567

`A000005(2^A079071(n))`
-/

namespace A375216.P10868038081582391567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A079071 n : ℤ))).toNat

end

end A375216.P10868038081582391567

/-! ## A375216.P2885731050367792740

`A326307(A302938(n+1))`
-/

namespace A375216.P2885731050367792740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326307 (A302938 (n + 1)).toNat

end

end A375216.P2885731050367792740

/-! ## A375216.P9242748329955657637

`A336500(3^A079071(n))`
-/

namespace A375216.P9242748329955657637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336500 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A079071 n : ℤ))).toNat

end

end A375216.P9242748329955657637

/-!
# A375217: Primes p such that p^64 + 2^64 is prime.

The programs for A375217, there is no canonical definition to state claims against.
-/

/-! ## A375217.P10413186449020206698

`A132260(A000096(n+3))`
-/

namespace A375217.P10413186449020206698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (A000096 (n + 3)).toNat

end

end A375217.P10413186449020206698

/-! ## A375217.P2297279885618715193

`A132260(A000217(n+4)-1)`
-/

namespace A375217.P2297279885618715193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (A000217 (n + 4) - 1).toNat

end

end A375217.P2297279885618715193

/-! ## A375217.P188393427198859830

`A132260(eq[A161435(n), A269011(n+1)])`
-/

namespace A375217.P188393427198859830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375217.P188393427198859830

/-!
# A375222: a(n) is the number of permutations of the multiset 1,1, 2,2, ..., n,n such that exactly one pair k,k stays at its initial locations 2k-1, 2k.

The programs for A375222, there is no canonical definition to state claims against.
-/

/-! ## A375222.P8653183755171036036

`(n+1)*A374980(n)`
-/

namespace A375222.P8653183755171036036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374980 n

end

end A375222.P8653183755171036036

/-! ## A375222.P12944420590458762939

`(n+1)*A375694(∑[n+3])`
-/

namespace A375222.P12944420590458762939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A375694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375222.P12944420590458762939

/-! ## A375222.P171233618768532294

`A374980(n)*A374993(A000079(n))`
-/

namespace A375222.P171233618768532294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374980 n * A374993 (A000079 n).toNat

end

end A375222.P171233618768532294

/-! ## A375222.P7581647302973963171

`A374980(n)*A377903(A216556(n))`
-/

namespace A375222.P7581647302973963171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374980 n * A377903 (A216556 n).toNat

end

end A375222.P7581647302973963171

/-!
# A375223: a(n) is the number of permutations of the multiset 1,1, 2,2, ..., n,n such that at least one pair k,k stays at its initial locations 2k-1, 2k.

The programs for A375223, there is no canonical definition to state claims against.
-/

/-! ## A375223.P2038300590515989730

`A000680(n+1)-A374980(n+1)`
-/

namespace A375223.P2038300590515989730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (n + 1) - A374980 (n + 1)

end

end A375223.P2038300590515989730

/-!
# A375224: Expansion of e.g.f. exp( x^2/(1-x)^3 ) / (1-x)^2.

The programs for A375224, there is no canonical definition to state claims against.
-/

/-! ## A375224.P3424036689739650235

`A375172(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A375224.P3424036689739650235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375172 n + (n : ℤ) * a (n - 1)

end

end A375224.P3424036689739650235

/-!
# A375226: Expansion of e.g.f. exp( (x / (1-x))^3 ) / (1-x)^2.

The programs for A375226, there is no canonical definition to state claims against.
-/

/-! ## A375226.P13035515138662824782

`A361595(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A375226.P13035515138662824782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A361595 n + (n : ℤ) * a (n - 1)

end

end A375226.P13035515138662824782

/-! ## A375226.P17165582998892514675

`A329004(n^n+n)`
-/

namespace A375226.P17165582998892514675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329004 (n ^ n + n)

end

end A375226.P17165582998892514675

/-!
# A375227: Expansion of e.g.f. exp( (x / (1-x))^3 ) / (1-x)^3.

The programs for A375227, there is no canonical definition to state claims against.
-/

/-! ## A375227.P4294204233585772727

`A038572(A003945(n)*A328437(n+1))`
-/

namespace A375227.P4294204233585772727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A003945 n * A328437 (n + 1)).toNat

end

end A375227.P4294204233585772727

/-!
# A375229: Numbers k such that A299090(k) is even.

The programs for A375229, there is no canonical definition to state claims against.
-/

/-! ## A375229.P5306341973718992911

`∏{e}[A000079(n), A252849(#)]`
-/

namespace A375229.P5306341973718992911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A252849 (Nat.factorization (f1 n).natAbs p)

end

end A375229.P5306341973718992911

/-! ## A375229.P9183417337410093850

`filter[A367069(2*(n+1)), A087049(#)]`
-/

namespace A375229.P9183417337410093850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A375229.P9183417337410093850

/-!
# A375230: The total number of infinitary divisors of the infinitary divisors of n.

The programs for A375230, the canonical program `A375230.P7295009914355440211` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375230 has offset 1).

The definition of A375230 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064547, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375230.P7295009914355440211

`3^A064547(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375230

/-- `3^A064547(n+1)` -/
def P7295009914355440211.Spec : Prop :=
  ∀ n, P7295009914355440211.a n = (A375230 (n + 1) : ℚ)

end A375230

/-! ## A375230.P7567013233105971900

`3^∑{e}[n+1, #-val(#!, 2)]`
-/

namespace A375230.P7567013233105971900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ)) : ℤ)

end

end A375230.P7567013233105971900

namespace A375230

/-- `3^∑{e}[n+1, #-val(#!, 2)]` -/
def P7567013233105971900.Spec : Prop :=
  ∀ n, P7567013233105971900.a n = (A375230 (n + 1) : ℚ)

end A375230

/-! ## A375230.P3896089595123496779

`∏{e}[n+1, A048883(#)]`
-/

namespace A375230.P3896089595123496779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A048883 (Nat.factorization (f1 n) p)

end

end A375230.P3896089595123496779

namespace A375230

/-- `∏{e}[n+1, A048883(#)]` -/
def P3896089595123496779.Spec : Prop :=
  ∀ n, P3896089595123496779.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P710897723839307270

`∏{e}[A160102(n+1), #+2]`
-/

namespace A375230.P710897723839307270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A375230.P710897723839307270

namespace A375230

/-- `∏{e}[A160102(n+1), #+2]` -/
def P710897723839307270.Spec : Prop :=
  ∀ n, (P710897723839307270.a n : ℤ) = A375230 (n + 1)

end A375230

/-! ## A375230.P2107111690408405570

`A003961(A037445(n+1))`
-/

namespace A375230.P2107111690408405570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A037445 (n + 1)).toNat

end

end A375230.P2107111690408405570

namespace A375230

/-- `A003961(A037445(n+1))` -/
def P2107111690408405570.Spec : Prop :=
  ∀ n, P2107111690408405570.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P6221204501810147765

`A165824(A074848(n+1))`
-/

namespace A375230.P6221204501810147765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A074848 (n + 1)).toNat

end

end A375230.P6221204501810147765

namespace A375230

/-- `A165824(A074848(n+1))` -/
def P6221204501810147765.Spec : Prop :=
  ∀ n, P6221204501810147765.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P4735770124381175956

`A165824(A293442(n+1))`
-/

namespace A375230.P4735770124381175956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A293442 (n + 1)).toNat

end

end A375230.P4735770124381175956

namespace A375230

/-- `A165824(A293442(n+1))` -/
def P4735770124381175956.Spec : Prop :=
  ∀ n, P4735770124381175956.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P60029829591371826

`A165824(A375240(n+1))`
-/

namespace A375230.P60029829591371826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A375240 (n + 1)).toNat

end

end A375230.P60029829591371826

namespace A375230

/-- `A165824(A375240(n+1))` -/
def P60029829591371826.Spec : Prop :=
  ∀ n, P60029829591371826.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P16410493176555802628

`A165824(A302024(n+1))`
-/

namespace A375230.P16410493176555802628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A302024 (n + 1)).toNat

end

end A375230.P16410493176555802628

namespace A375230

/-- `A165824(A302024(n+1))` -/
def P16410493176555802628.Spec : Prop :=
  ∀ n, P16410493176555802628.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P10775842651941080723

`A007425(A160102(n+1))`
-/

namespace A375230.P10775842651941080723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A160102 (n + 1)).toNat

end

end A375230.P10775842651941080723

namespace A375230

/-- `A007425(A160102(n+1))` -/
def P10775842651941080723.Spec : Prop :=
  ∀ n, P10775842651941080723.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P5585018565457699794

`3^A302790((n+1)²)`
-/

namespace A375230.P5585018565457699794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A302790 ((n + 1) ^ 2) : ℤ)

end

end A375230.P5585018565457699794

namespace A375230

/-- `3^A302790((n+1)²)` -/
def P5585018565457699794.Spec : Prop :=
  ∀ n, P5585018565457699794.a n = (A375230 (n + 1) : ℚ)

end A375230

/-! ## A375230.P1690163937760756181

`A000005(A152452(A037445(n+1))²)`
-/

namespace A375230.P1690163937760756181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A152452 (A037445 (n + 1)).toNat ^ 2).toNat

end

end A375230.P1690163937760756181

namespace A375230

/-- `A000005(A152452(A037445(n+1))²)` -/
def P1690163937760756181.Spec : Prop :=
  ∀ n, P1690163937760756181.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P6251466900379101761

`A293442(A332462(A293442(n+1))²)`
-/

namespace A375230.P6251466900379101761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293442 (A332462 (A293442 (n + 1)).toNat ^ 2).toNat

end

end A375230.P6251466900379101761

namespace A375230

/-- `A293442(A332462(A293442(n+1))²)` -/
def P6251466900379101761.Spec : Prop :=
  ∀ n, P6251466900379101761.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P12874185809323269712

`A000005(A160102(n+1)²)`
-/

namespace A375230.P12874185809323269712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A160102 (n + 1) ^ 2).toNat

end

end A375230.P12874185809323269712

namespace A375230

/-- `A000005(A160102(n+1)²)` -/
def P12874185809323269712.Spec : Prop :=
  ∀ n, P12874185809323269712.a n = A375230 (n + 1)

end A375230

/-! ## A375230.P13951693856971329268

`3^A389836((n+1)²)`
-/

namespace A375230.P13951693856971329268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A389836 ((n + 1) ^ 2) : ℤ)

end

end A375230.P13951693856971329268

namespace A375230

/-- `3^A389836((n+1)²)` -/
def P13951693856971329268.Spec : Prop :=
  ∀ n, P13951693856971329268.a n = (A375230 (n + 1) : ℚ)

end A375230

/-!
# A375231: Interleaving A006040 and A228229.

The programs for A375231, there is no canonical definition to state claims against.
-/

/-! ## A375231.P9507500772983426224

`A099597(char[1]+∑[or(1, n+1)])`
-/

namespace A375231.P9507500772983426224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A375231.P9507500772983426224

/-! ## A375231.P16667831555042963273

`A099597(A372231(n+2))`
-/

namespace A375231.P16667831555042963273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A372231 (n + 2)).toNat

end

end A375231.P16667831555042963273

/-! ## A375231.P15762716627996141595

`A099597(A008619(n)*A265283(n))`
-/

namespace A375231.P15762716627996141595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A008619 n * A265283 n).toNat

end

end A375231.P15762716627996141595

/-! ## A375231.P7169157614068109871

`A099597(A100966(n+1)+A000217(n))`
-/

namespace A375231.P7169157614068109871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099597 (A100966 (n + 1) + A000217 n).toNat

end

end A375231.P7169157614068109871

/-!
# A375232: Two terms that contain the digit "d" are always separated by "d" terms that do not contain the digit "d". This is the lexicographically earliest sequence of distinct nonnegative integers with this property.

The programs for A375232, there is no canonical definition to state claims against.
-/

/-! ## A375232.P7841236062009424924

`A375243(A348553(n))`
-/

namespace A375232.P7841236062009424924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A348553 n).toNat

end

end A375232.P7841236062009424924

/-! ## A375232.P12895018055254415860

`A375243(A387051(n))`
-/

namespace A375232.P12895018055254415860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A387051 n).toNat

end

end A375232.P12895018055254415860

/-! ## A375232.P584706318375782814

`A375243(A387108(n))`
-/

namespace A375232.P584706318375782814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A387108 n).toNat

end

end A375232.P584706318375782814

/-! ## A375232.P2193594341408838425

`A375243(A387109(n))`
-/

namespace A375232.P2193594341408838425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A387109 n).toNat

end

end A375232.P2193594341408838425

/-! ## A375232.P17510542338623495509

`A375243(A004438(n+1))`
-/

namespace A375232.P17510542338623495509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375243 (A004438 (n + 1)).toNat

end

end A375232.P17510542338623495509

/-!
# A375235: Records of A112591.

The programs for A375235, there is no canonical definition to state claims against.
-/

/-! ## A375235.P7866226166574673964

`xor(A014210(n+1), A014234(n+1))`
-/

namespace A375235.P7866226166574673964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014210 (n + 1)) (A014234 (n + 1))

end

end A375235.P7866226166574673964

/-! ## A375235.P10430851663875583300

`record[xor(A000040(n+1), A065091(n+1))]`
-/

namespace A375235.P10430851663875583300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A065091 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375235.P10430851663875583300

/-! ## A375235.P18046277779732500535

`record[xor(A000040(n+1), A000040(n+2))]`
-/

namespace A375235.P18046277779732500535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1)) (A000040 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375235.P18046277779732500535

/-! ## A375235.P14776740380843782767

`record[xor(A008578(n+2), A065091(n+1))]`
-/

namespace A375235.P14776740380843782767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008578 (n + 2)) (A065091 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375235.P14776740380843782767

/-!
# A375237: Expansion of e.g.f. 1 / (1 + x * log(1 - x^2/2))^2.

The programs for A375237, there is no canonical definition to state claims against.
-/

/-! ## A375237.P201852837562187253

`A124769(A056391(n+1))*A375167(n)`
-/

namespace A375237.P201852837562187253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A056391 (n + 1)).toNat * A375167 n

end

end A375237.P201852837562187253

/-! ## A375237.P288366709851204790

`A043537(A143382(n))*A375167(n)`
-/

namespace A375237.P288366709851204790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A143382 n).toNat * A375167 n

end

end A375237.P288366709851204790

/-! ## A375237.P8566307207039287995

`A375664(n)/A034444(A306895(n))`
-/

namespace A375237.P8566307207039287995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375664 n : ℚ) / (A034444 (A306895 n).toNat : ℚ)

end

end A375237.P8566307207039287995

/-! ## A375237.P15762877298507281110

`lcm(A008620(n), A026741(A375831(n)))`
-/

namespace A375237.P15762877298507281110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008620 n) (A026741 (A375831 n).toNat)

end

end A375237.P15762877298507281110

/-!
# A375239: Numbers k such that k, k+1, ..., k+5 all have 3 prime factors (counted with multiplicity).

The programs for A375239, there is no canonical definition to state claims against.
-/

/-! ## A375239.P452956207995000586

`∩[A045942(n+1), A268588(n+1)]`
-/

namespace A375239.P452956207995000586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375239.P452956207995000586

/-!
# A375240: For squarefree j, a(j*k^2) = j * a(k), a(1) = 1.

The programs for A375240, the canonical program `A375240.P16828847594714467939` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375240 has offset 1).

The definition of A375240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007913, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375240.P16828847594714467939

`A007913(n+1)*a(A000188(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375240

/-- `A007913(n+1)*a(A000188(n+1)-1)` -/
def P16828847594714467939.Spec : Prop :=
  ∀ n, P16828847594714467939.a n = A375240 (n + 1)

theorem P16828847594714467939.correct : P16828847594714467939.Spec := by
  intro n
  simp only [A375240, Nat.add_sub_cancel]

end A375240

/-! ## A375240.P4747690778908929585

`A015052(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A053165(n+1))`
-/

namespace A375240.P4747690778908929585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ) * A053165 (n + 1)).toNat

end

end A375240.P4747690778908929585

namespace A375240

/-- `A015052(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A053165(n+1))` -/
def P4747690778908929585.Spec : Prop :=
  ∀ n, P4747690778908929585.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P17491161113882566013

`A019555(A011262(n+1))`
-/

namespace A375240.P17491161113882566013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A011262 (n + 1)).toNat

end

end A375240.P17491161113882566013

namespace A375240

/-- `A019555(A011262(n+1))` -/
def P17491161113882566013.Spec : Prop :=
  ∀ n, P17491161113882566013.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P10152674323260999420

`A015052(A331737(n+1)²)`
-/

namespace A375240.P10152674323260999420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A331737 (n + 1) ^ 2).toNat

end

end A375240.P10152674323260999420

namespace A375240

/-- `A015052(A331737(n+1)²)` -/
def P10152674323260999420.Spec : Prop :=
  ∀ n, P10152674323260999420.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P2905316709006080238

`A053166((n+1)*A053165(n+1))`
-/

namespace A375240.P2905316709006080238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A053165 (n + 1)).toNat

end

end A375240.P2905316709006080238

namespace A375240

/-- `A053166((n+1)*A053165(n+1))` -/
def P2905316709006080238.Spec : Prop :=
  ∀ n, P2905316709006080238.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P17205734553468560636

`A019554(Δ[A069891(n)]*A019554(n+1))`
-/

namespace A375240.P17205734553468560636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((f1 (n + 1) - f1 n) * A019554 (n + 1)).toNat

end

end A375240.P17205734553468560636

namespace A375240

/-- `A019554(Δ[A069891(n)]*A019554(n+1))` -/
def P17205734553468560636.Spec : Prop :=
  ∀ n, P17205734553468560636.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P13259507915047175749

`A019554(A007913(n+1)*A019554(n+1))`
-/

namespace A375240.P13259507915047175749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A007913 (n + 1) * A019554 (n + 1)).toNat

end

end A375240.P13259507915047175749

namespace A375240

/-- `A019554(A007913(n+1)*A019554(n+1))` -/
def P13259507915047175749.Spec : Prop :=
  ∀ n, P13259507915047175749.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P7540858845454990947

`A019554(A019554(n+1)*A056554(n+1))`
-/

namespace A375240.P7540858845454990947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A019554 (n + 1) * A056554 (n + 1)).toNat

end

end A375240.P7540858845454990947

namespace A375240

/-- `A019554(A019554(n+1)*A056554(n+1))` -/
def P7540858845454990947.Spec : Prop :=
  ∀ n, P7540858845454990947.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P10667327199983389454

`A053166(A055491(n+1)*A057521(n+1))`
-/

namespace A375240.P10667327199983389454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A055491 (n + 1) * A057521 (n + 1)).toNat

end

end A375240.P10667327199983389454

namespace A375240

/-- `A053166(A055491(n+1)*A057521(n+1))` -/
def P10667327199983389454.Spec : Prop :=
  ∀ n, P10667327199983389454.a n = A375240 (n + 1)

end A375240

/-! ## A375240.P3409699971372327728

`A367932(A367933((n+1)*A367933(n+1)))`
-/

namespace A375240.P3409699971372327728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367932 (A367933 ((n + 1 : ℤ) * A367933 (n + 1)).toNat).toNat

end

end A375240.P3409699971372327728

namespace A375240

/-- `A367932(A367933((n+1)*A367933(n+1)))` -/
def P3409699971372327728.Spec : Prop :=
  ∀ n, P3409699971372327728.a n = A375240 (n + 1)

end A375240

/-!
# A375241: Nontriangular numbers with digital root in {1, 3, 6, 9}.

The programs for A375241, the canonical program `A375241.P10688031051260759881` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375241 has offset 1).

The definition of A375241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375241.P10688031051260759881

`filter[A055264(n+1), A123110(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375241

/-- `filter[A055264(n+1), A123110(#)]` -/
def P10688031051260759881.Spec : Prop :=
  ∀ n, P10688031051260759881.a n = A375241 (n + 1)

theorem P10688031051260759881.correct : P10688031051260759881.Spec := by
  intro n
  simp only [A375241, Nat.add_sub_cancel]

end A375241

/-! ## A375241.P11765615814424510378

`∩[A014132(n+1), A055264(n)]`
-/

namespace A375241.P11765615814424510378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375241.P11765615814424510378

namespace A375241

/-- `∩[A014132(n+1), A055264(n)]` -/
def P11765615814424510378.Spec : Prop :=
  ∀ n, (P11765615814424510378.a n : ℤ) = A375241 (n + 1)

end A375241

/-! ## A375241.P8767617150062251543

`eq[char[record[n-(3-n)²%9]], A035214(n)]`
-/

namespace A375241.P8767617150062251543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod ((3 - (n : ℤ)) ^ 2) 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f4 j) n

end

end A375241.P8767617150062251543

namespace A375241

/-- `eq[char[record[n-(3-n)²%9]], A035214(n)]` -/
def P8767617150062251543.Spec : Prop :=
  ∀ n, (P8767617150062251543.a n : ℤ) = A375241 (n + 1)

end A375241

/-! ## A375241.P243045310070827493

`eq[A010054(n), A080846(A038620(n))]`
-/

namespace A375241.P243045310070827493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080846 (A038620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375241.P243045310070827493

namespace A375241

/-- `eq[A010054(n), A080846(A038620(n))]` -/
def P243045310070827493.Spec : Prop :=
  ∀ n, (P243045310070827493.a n : ℤ) = A375241 (n + 1)

end A375241

/-! ## A375241.P16371151991433404075

`lt[A010054(n), char[A004157(2*n+3)]]`
-/

namespace A375241.P16371151991433404075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004157 (2 * n + 3)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A375241.P16371151991433404075

namespace A375241

/-- `lt[A010054(n), char[A004157(2*n+3)]]` -/
def P16371151991433404075.Spec : Prop :=
  ∀ n, (P16371151991433404075.a n : ℤ) = A375241 (n + 1)

end A375241

/-!
# A375242: Numbers with digital root in {2, 4, 5, 7, 8}.

The programs for A375242, the canonical program `A375242.P15192622207521444910` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375242 has offset 1).

The definition of A375242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375242.P11141410134878938608

`comp[3-dr(n²)+n]`
-/

namespace A375242.P11141410134878938608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375242.P11141410134878938608

namespace A375242

/-- `comp[3-dr(n²)+n]` -/
def P11141410134878938608.Spec : Prop :=
  ∀ n, (P11141410134878938608.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P24052825168932042

`comp[2*n-dr(n)²]`
-/

namespace A375242.P24052825168932042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375242.P24052825168932042

namespace A375242

/-- `comp[2*n-dr(n)²]` -/
def P24052825168932042.Spec : Prop :=
  ∀ n, (P24052825168932042.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P17134708584922664965

`comp[3-(dr(n²)-n)]`
-/

namespace A375242.P17134708584922664965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((SequenceMachineLib.digitalRoot (n ^ 2 : ℤ) : ℤ) - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375242.P17134708584922664965

namespace A375242

/-- `comp[3-(dr(n²)-n)]` -/
def P17134708584922664965.Spec : Prop :=
  ∀ n, (P17134708584922664965.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P17051175194698349795

`comp[dr(a(n-1))+n]` with `a(0)=0`
-/

namespace A375242.P17051175194698349795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 1) : ℤ) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A375242.P17051175194698349795

namespace A375242

/-- `comp[dr(a(n-1))+n]` -/
def P17051175194698349795.Spec : Prop :=
  ∀ n, (P17051175194698349795.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P15192622207521444910

`a(n-5)+9` with `a(0)=2, a(1)=4, a(2)=5, a(3)=7, a(4)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375242

/-- `a(n-5)+9` -/
def P15192622207521444910.Spec : Prop :=
  ∀ n, (P15192622207521444910.a n : ℤ) = A375242 (n + 1)

theorem P15192622207521444910.correct : P15192622207521444910.Spec := by
  intro n
  simp only [A375242, Nat.add_sub_cancel]

end A375242

/-! ## A375242.P8772142408807806859

`comp[n+1-dr(n*(n+1))]`
-/

namespace A375242.P8772142408807806859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.digitalRoot (n * (n + 1) : ℤ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375242.P8772142408807806859

namespace A375242

/-- `comp[n+1-dr(n*(n+1))]` -/
def P8772142408807806859.Spec : Prop :=
  ∀ n, (P8772142408807806859.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P1353341816026189166

`∑[floor(a(n-5))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=2, a(4)=1, a(5)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A375242.P1353341816026189166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1, 2, 1, 3] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375242.P1353341816026189166

namespace A375242

/-- `∑[floor(a(n-5))]` -/
def P1353341816026189166.Spec : Prop :=
  ∀ n, (P1353341816026189166.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P2225272981860079965

`record[n+2-10%dr(2*n+1)]`
-/

namespace A375242.P2225272981860079965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((10 % SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375242.P2225272981860079965

namespace A375242

/-- `record[n+2-10%dr(2*n+1)]` -/
def P2225272981860079965.Spec : Prop :=
  ∀ n, P2225272981860079965.a n = A375242 (n + 1)

end A375242

/-! ## A375242.P7309834115095029711

`comp[A055264(n)]`
-/

namespace A375242.P7309834115095029711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375242.P7309834115095029711

namespace A375242

/-- `comp[A055264(n)]` -/
def P7309834115095029711.Spec : Prop :=
  ∀ n, (P7309834115095029711.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P5159738884347877068

`∪[A017209(n), A138671(n)]`
-/

namespace A375242.P5159738884347877068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P5159738884347877068

namespace A375242

/-- `∪[A017209(n), A138671(n)]` -/
def P5159738884347877068.Spec : Prop :=
  ∀ n, (P5159738884347877068.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P12711377076722926156

`A173276(n)+A047309(n+1)`
-/

namespace A375242.P12711377076722926156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173276 n + A047309 (n + 1)

end

end A375242.P12711377076722926156

namespace A375242

/-- `A173276(n)+A047309(n+1)` -/
def P12711377076722926156.Spec : Prop :=
  ∀ n, P12711377076722926156.a n = A375242 (n + 1)

end A375242

/-! ## A375242.P3384645855012569104

`∪[A056527(n+1), A016789(n)]`
-/

namespace A375242.P3384645855012569104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P3384645855012569104

namespace A375242

/-- `∪[A056527(n+1), A016789(n)]` -/
def P3384645855012569104.Spec : Prop :=
  ∀ n, (P3384645855012569104.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P17990470403697225066

`∪[A056527(n+1), A017257(n)]`
-/

namespace A375242.P17990470403697225066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P17990470403697225066

namespace A375242

/-- `∪[A056527(n+1), A017257(n)]` -/
def P17990470403697225066.Spec : Prop :=
  ∀ n, (P17990470403697225066.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P4352036014696880104

`∪[A125758(n+1), A016789(n)]`
-/

namespace A375242.P4352036014696880104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P4352036014696880104

namespace A375242

/-- `∪[A125758(n+1), A016789(n)]` -/
def P4352036014696880104.Spec : Prop :=
  ∀ n, (P4352036014696880104.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P14616586694386806386

`∪[A056527(n+1), A138671(n)]`
-/

namespace A375242.P14616586694386806386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P14616586694386806386

namespace A375242

/-- `∪[A056527(n+1), A138671(n)]` -/
def P14616586694386806386.Spec : Prop :=
  ∀ n, (P14616586694386806386.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P13151410324962995726

`∪[A125758(n+1), A138671(n)]`
-/

namespace A375242.P13151410324962995726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P13151410324962995726

namespace A375242

/-- `∪[A125758(n+1), A138671(n)]` -/
def P13151410324962995726.Spec : Prop :=
  ∀ n, (P13151410324962995726.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P5824272534161133552

`∪[A156638(n+1), A138671(n)]`
-/

namespace A375242.P5824272534161133552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P5824272534161133552

namespace A375242

/-- `∪[A156638(n+1), A138671(n)]` -/
def P5824272534161133552.Spec : Prop :=
  ∀ n, (P5824272534161133552.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P15803096375005006197

`∪[A016051(n+1)+1, A016789(n)]`
-/

namespace A375242.P15803096375005006197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P15803096375005006197

namespace A375242

/-- `∪[A016051(n+1)+1, A016789(n)]` -/
def P15803096375005006197.Spec : Prop :=
  ∀ n, (P15803096375005006197.a n : ℤ) = A375242 (n + 1)

end A375242

/-! ## A375242.P15803584409281146825

`∪[A026231(n+1), A056527(n+1)]`
-/

namespace A375242.P15803584409281146825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375242.P15803584409281146825

namespace A375242

/-- `∪[A026231(n+1), A056527(n+1)]` -/
def P15803584409281146825.Spec : Prop :=
  ∀ n, (P15803584409281146825.a n : ℤ) = A375242 (n + 1)

end A375242

/-!
# A375245: Number of biquadratefree numbers <= n.

The programs for A375245, the canonical program `A375245.P12644491884728268425` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375245 has offset 1).

The definition of A375245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375245.P12644491884728268425

`∑[A307430(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375245

/-- `∑[A307430(n+1)]` -/
def P12644491884728268425.Spec : Prop :=
  ∀ n, P12644491884728268425.a n = A375245 (n + 1)

theorem P12644491884728268425.correct : P12644491884728268425.Spec := by
  intro n
  simp only [A375245, Nat.add_sub_cancel]

end A375245

/-! ## A375245.P10628550135345436237

`∑[abs(A053865(n+1))]`
-/

namespace A375245.P10628550135345436237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053865 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P10628550135345436237

namespace A375245

/-- `∑[abs(A053865(n+1))]` -/
def P10628550135345436237.Spec : Prop :=
  ∀ n, P10628550135345436237.a n = A375245 (n + 1)

end A375245

/-! ## A375245.P10590105665061920784

`∑[abs(A189022(n+1))]`
-/

namespace A375245.P10590105665061920784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A189022 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P10590105665061920784

namespace A375245

/-- `∑[abs(A189022(n+1))]` -/
def P10590105665061920784.Spec : Prop :=
  ∀ n, P10590105665061920784.a n = A375245 (n + 1)

end A375245

/-! ## A375245.P3860942380958796768

`∑[abs(A307445(n+1))]`
-/

namespace A375245.P3860942380958796768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307445 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P3860942380958796768

namespace A375245

/-- `∑[abs(A307445(n+1))]` -/
def P3860942380958796768.Spec : Prop :=
  ∀ n, P3860942380958796768.a n = A375245 (n + 1)

end A375245

/-! ## A375245.P14512410347432368701

`∑[abs(A363552(n+1))]`
-/

namespace A375245.P14512410347432368701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A363552 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P14512410347432368701

namespace A375245

/-- `∑[abs(A363552(n+1))]` -/
def P14512410347432368701.Spec : Prop :=
  ∀ n, P14512410347432368701.a n = A375245 (n + 1)

end A375245

/-! ## A375245.P3058142537271665356

`∑[A008683(A000188(n+1))²]`
-/

namespace A375245.P3058142537271665356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000188 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375245.P3058142537271665356

namespace A375245

/-- `∑[A008683(A000188(n+1))²]` -/
def P3058142537271665356.Spec : Prop :=
  ∀ n, P3058142537271665356.a n = A375245 (n + 1)

end A375245

/-!
# A375246: Number of biquadratefree numbers <= 10^n.

The programs for A375246, the canonical program `A375246.P12700141058600722749` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375246 has offset 0).

The definition of A375246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375245, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375246.P12700141058600722749

`A375245(10^n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375246

/-- `A375245(10^n)` -/
def P12700141058600722749.Spec : Prop :=
  ∀ n, P12700141058600722749.a n = A375246 n

theorem P12700141058600722749.correct : P12700141058600722749.Spec := by
  intro n
  simp only [A375246]

end A375246

/-!
# A375248: Expansion of (1 - x)/(1 - 2*x - 3*x^2)^(7/2).

The programs for A375248, the canonical program `A375248.P9379692103112221284` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375248 has offset 0).

The definition of A375248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375248.P9379692103112221284

`C(n+5, 3)/10*A014531(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375248

/-- `C(n+5, 3)/10*A014531(n+1)` -/
def P9379692103112221284.Spec : Prop :=
  ∀ n, P9379692103112221284.a n = (A375248 n : ℚ)

end A375248

/-! ## A375248.P13119436387612179753

`(n+5)/(n*(n+4))*((2*n+3)*a(n-1)+3*(n+4)*a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A375248.P13119436387612179753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (n + 5 : ℚ) / (n * (n + 4) : ℚ) * ((2 * n + 3 : ℚ) * a (n - 1) + (3 * (n + 4) : ℚ) * a (n - 2))

end

end A375248.P13119436387612179753

namespace A375248

/-- `(n+5)/(n*(n+4))*((2*n+3)*a(n-1)+3*(n+4)*a(n-2))` -/
def P13119436387612179753.Spec : Prop :=
  ∀ n, P13119436387612179753.a n = (A375248 n : ℚ)

end A375248

/-!
# A375250: a(n) = A375251(n) / A010790(n) = denominator(W1([n], x)) / (n!*(n - 1)!), where W1([n], x) is the first Sylvester wave for parts in [n].

The programs for A375250, there is no canonical definition to state claims against.
-/

/-! ## A375250.P7940135809173443135

`A375251(n+1)/A010790(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375250.P7940135809173443135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375251 (n + 1) : ℚ) / (A010790 n : ℚ)

end

end A375250.P7940135809173443135

/-!
# A375251: Denominators of the polynomials A375252 (polynomial part of the partition function restricted to partitions of the integer x with parts in (1,2,...,n)).

The programs for A375251, there is no canonical definition to state claims against.
-/

/-! ## A375251.P10140757307936819534

`A375250(n+1)*(n+1)!*n!`
-/

namespace A375251.P10140757307936819534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375250 (n + 1) * (Nat.factorial (n + 1) : ℤ) * (Nat.factorial n : ℤ)

end

end A375251.P10140757307936819534

/-! ## A375251.P15468069855805669056

`A010790(n)*A375250(n+1)`
-/

namespace A375251.P15468069855805669056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010790 n * A375250 (n + 1)

end

end A375251.P15468069855805669056

/-! ## A375251.P10985343779536137060

`A375250(n+1)/2*A047677(n)`
-/

namespace A375251.P10985343779536137060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375250 (n + 1) : ℚ) / 2 * (A047677 n : ℚ)

end

end A375251.P10985343779536137060

/-!
# A375253: Expansion of (1 - 2*x + 2*x^2)/(1 - 2*x - 3*x^2)^(7/2).

The programs for A375253, the canonical program `A375253.P16386272213412012190` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375253 has offset 0).

The definition of A375253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375253.P16386272213412012190

`C(n+4, 3)/4*A005717(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375253

/-- `C(n+4, 3)/4*A005717(n+1)` -/
def P16386272213412012190.Spec : Prop :=
  ∀ n, P16386272213412012190.a n = (A375253 n : ℚ)

end A375253

/-! ## A375253.P11601930236052310714

`(n+4)/(n*(n+2))*((2*n+1)*a(n-1)+3*(n+3)*a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A375253.P11601930236052310714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n + 4 : ℚ) / (n * (n + 2) : ℚ) * ((2 * n + 1 : ℚ) * a (n - 1) + (3 * (n + 3) : ℚ) * a (n - 2))

end

end A375253.P11601930236052310714

namespace A375253

/-- `(n+4)/(n*(n+2))*((2*n+1)*a(n-1)+3*(n+3)*a(n-2))` -/
def P11601930236052310714.Spec : Prop :=
  ∀ n, P11601930236052310714.a n = (A375253 n : ℚ)

end A375253

/-! ## A375253.P12079931249754894248

`∑[∑[∑[n+1]]]*A001006(n)`
-/

namespace A375253.P12079931249754894248
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001006 n

end

end A375253.P12079931249754894248

namespace A375253

/-- `∑[∑[∑[n+1]]]*A001006(n)` -/
def P12079931249754894248.Spec : Prop :=
  ∀ n, P12079931249754894248.a n = A375253 n

end A375253

/-! ## A375253.P15143552987571216690

`A091869(A167499(n+3))`
-/

namespace A375253.P15143552987571216690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (A167499 (n + 3)).toNat

end

end A375253.P15143552987571216690

namespace A375253

/-- `A091869(A167499(n+3))` -/
def P15143552987571216690.Spec : Prop :=
  ∀ n, P15143552987571216690.a n = A375253 n

end A375253

/-! ## A375253.P7730209568529376338

`A091869(A155212(n)+13)`
-/

namespace A375253.P7730209568529376338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (A155212 n + 13).toNat

end

end A375253.P7730209568529376338

namespace A375253

/-- `A091869(A155212(n)+13)` -/
def P7730209568529376338.Spec : Prop :=
  ∀ n, P7730209568529376338.a n = A375253 n

end A375253

/-! ## A375253.P4204757893214945639

`A091869(A056000(n)+15)`
-/

namespace A375253.P4204757893214945639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (A056000 n + 15).toNat

end

end A375253.P4204757893214945639

namespace A375253

/-- `A091869(A056000(n)+15)` -/
def P4204757893214945639.Spec : Prop :=
  ∀ n, P4204757893214945639.a n = A375253 n

end A375253

/-! ## A375253.P1579909863054546762

`A091187(∑[A028310(n)+5]+5)`
-/

namespace A375253.P1579909863054546762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A375253.P1579909863054546762

namespace A375253

/-- `A091187(∑[A028310(n)+5]+5)` -/
def P1579909863054546762.Spec : Prop :=
  ∀ n, P1579909863054546762.a n = A375253 n

end A375253

/-! ## A375253.P2511302126847649252

`A091187(∑[A008486(n)-2*n+5]+5)`
-/

namespace A375253.P2511302126847649252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - (2 * n : ℤ) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A375253.P2511302126847649252

namespace A375253

/-- `A091187(∑[A008486(n)-2*n+5]+5)` -/
def P2511302126847649252.Spec : Prop :=
  ∀ n, P2511302126847649252.a n = A375253 n

end A375253

/-! ## A375253.P5157148133534793130

`A001006(n)*A007997(A167614(n+1))`
-/

namespace A375253.P5157148133534793130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A007997 (A167614 (n + 1)).toNat

end

end A375253.P5157148133534793130

namespace A375253

/-- `A001006(n)*A007997(A167614(n+1))` -/
def P5157148133534793130.Spec : Prop :=
  ∀ n, P5157148133534793130.a n = A375253 n

end A375253

/-!
# A375255: Expansion of 1/(1 - 2*x + 3*x^2 + 2*x^3 + x^4).

The programs for A375255, the canonical program `A375255.P6973410403128255881` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375255 has offset 0).

The definition of A375255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+3x^2+2x^3+x^4))` (program `A375255.P6973410403128255881`, by `A375255.P6973410403128255881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375255.P6973410403128255881

`ogf(1/(1-2x+3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375255

/-- `ogf(1/(1-2x+3x^2+2x^3+x^4))` -/
def P6973410403128255881.Spec : Prop :=
  ∀ n, P6973410403128255881.a n = A375255 n

theorem P6973410403128255881.correct : P6973410403128255881.Spec := by
  intro n
  simp only [A375255]

end A375255

/-! ## A375255.P1019509735685175319

`2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=-6`
-/

namespace A375255.P1019509735685175319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1, -6] fun n a =>
  2 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A375255.P1019509735685175319

namespace A375255

/-- `2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P1019509735685175319.Spec : Prop :=
  ∀ n, P1019509735685175319.a n = A375255 n

end A375255

/-! ## A375255.P16377047769832672133

`A014292(2*n+3)/2`
-/

namespace A375255.P16377047769832672133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014292 (2 * n + 3) : ℚ) / 2

end

end A375255.P16377047769832672133

namespace A375255

/-- `A014292(2*n+3)/2` -/
def P16377047769832672133.Spec : Prop :=
  ∀ n, P16377047769832672133.a n = (A375255 n : ℚ)

end A375255

/-! ## A375255.P2672017698712912575

`∑[A079962(2*n)]-A101552(2*n+3)`
-/

namespace A375255.P2672017698712912575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079962 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A101552 (2 * n + 3)

end

end A375255.P2672017698712912575

namespace A375255

/-- `∑[A079962(2*n)]-A101552(2*n+3)` -/
def P2672017698712912575.Spec : Prop :=
  ∀ n, P2672017698712912575.a n = A375255 n

end A375255

/-!
# A375256: Number of pairs of antipodal vertices in the level n Hanoi graph.

The programs for A375256, the canonical program `A375256.P1300235165337861687` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375256 has offset 1).

The definition of A375256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375256.P12632944993512718030

`3*(2^(2*(n+1)-3)+3*2^(n-1)-1)`
-/

namespace A375256.P12632944993512718030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 3 : ℤ) + 3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A375256.P12632944993512718030

namespace A375256

/-- `3*(2^(2*(n+1)-3)+3*2^(n-1)-1)` -/
def P12632944993512718030.Spec : Prop :=
  ∀ n, P12632944993512718030.a n = (A375256 (n + 1) : ℚ)

end A375256

/-! ## A375256.P1300235165337861687

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=3, a(1)=12, a(2)=39`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375256

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P1300235165337861687.Spec : Prop :=
  ∀ n, P1300235165337861687.a n = A375256 (n + 1)

theorem P1300235165337861687.correct : P1300235165337861687.Spec := by
  intro n
  simp only [A375256, Nat.add_sub_cancel]

end A375256

/-! ## A375256.P4693863731921153680

`A370933(n+2)-3`
-/

namespace A375256.P4693863731921153680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370933 (n + 2) - 3

end

end A375256.P4693863731921153680

namespace A375256

/-- `A370933(n+2)-3` -/
def P4693863731921153680.Spec : Prop :=
  ∀ n, P4693863731921153680.a n = A375256 (n + 1)

end A375256

/-! ## A375256.P15439398141478202577

`∑[ogf((3-9x-3x^2)/(1-6x+8x^2))]`
-/

namespace A375256.P15439398141478202577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -9, -3] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375256.P15439398141478202577

namespace A375256

/-- `∑[ogf((3-9x-3x^2)/(1-6x+8x^2))]` -/
def P15439398141478202577.Spec : Prop :=
  ∀ n, P15439398141478202577.a n = A375256 (n + 1)

end A375256

/-! ## A375256.P3190965864769780100

`A028403(n+1)-A394960(n)`
-/

namespace A375256.P3190965864769780100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028403 (n + 1) - A394960 n

end

end A375256.P3190965864769780100

namespace A375256

/-- `A028403(n+1)-A394960(n)` -/
def P3190965864769780100.Spec : Prop :=
  ∀ n, P3190965864769780100.a n = A375256 (n + 1)

end A375256

/-! ## A375256.P9734729231557410378

`A033484(2*n+1)-A169720(n)`
-/

namespace A375256.P9734729231557410378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 (2 * n + 1) - A169720 n

end

end A375256.P9734729231557410378

namespace A375256

/-- `A033484(2*n+1)-A169720(n)` -/
def P9734729231557410378.Spec : Prop :=
  ∀ n, P9734729231557410378.a n = A375256 (n + 1)

end A375256

/-!
# A375257: Numbers whose sum of base-2 digits is 1 more than their sum of base-3 digits.

The programs for A375257, the canonical program `A375257.P7772889362552758042` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375257 has offset 1).

The definition of A375257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375257.P7772889362552758042

`eq[1, A180017(n)+2]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375257

/-- `eq[1, A180017(n)+2]` -/
def P7772889362552758042.Spec : Prop :=
  ∀ n, (P7772889362552758042.a n : ℤ) = A375257 (n + 1)

theorem P7772889362552758042.correct : P7772889362552758042.Spec := by
  intro n
  simp only [A375257, Nat.add_sub_cancel]

end A375257

/-! ## A375257.P8356475313250117251

`eq[A180017(n), A260196(n)]`
-/

namespace A375257.P8356475313250117251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P8356475313250117251

namespace A375257

/-- `eq[A180017(n), A260196(n)]` -/
def P8356475313250117251.Spec : Prop :=
  ∀ n, (P8356475313250117251.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P7780219428065488076

`eq[A053735(n)+1, A000120(n)]`
-/

namespace A375257.P7780219428065488076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P7780219428065488076

namespace A375257

/-- `eq[A053735(n)+1, A000120(n)]` -/
def P7780219428065488076.Spec : Prop :=
  ∀ n, (P7780219428065488076.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P8734491275753198964

`eq[A000120(n), A173523(n+1)]`
-/

namespace A375257.P8734491275753198964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P8734491275753198964

namespace A375257

/-- `eq[A000120(n), A173523(n+1)]` -/
def P8734491275753198964.Spec : Prop :=
  ∀ n, (P8734491275753198964.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P4890390153034329714

`eq[A230641(n)+1, A092391(n)]`
-/

namespace A375257.P4890390153034329714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P4890390153034329714

namespace A375257

/-- `eq[A230641(n)+1, A092391(n)]` -/
def P4890390153034329714.Spec : Prop :=
  ∀ n, (P4890390153034329714.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P7765571904377644482

`eq[A180018(n)+1, A180019(n)]`
-/

namespace A375257.P7765571904377644482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P7765571904377644482

namespace A375257

/-- `eq[A180018(n)+1, A180019(n)]` -/
def P7765571904377644482.Spec : Prop :=
  ∀ n, (P7765571904377644482.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P16716574237337419171

`eq[1, A000038(n)-A180017(n)]`
-/

namespace A375257.P16716574237337419171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375257.P16716574237337419171

namespace A375257

/-- `eq[1, A000038(n)-A180017(n)]` -/
def P16716574237337419171.Spec : Prop :=
  ∀ n, (P16716574237337419171.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P13954206075838134029

`eq[2, A057427(n)-A180017(n)]`
-/

namespace A375257.P13954206075838134029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A180017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375257.P13954206075838134029

namespace A375257

/-- `eq[2, A057427(n)-A180017(n)]` -/
def P13954206075838134029.Spec : Prop :=
  ∀ n, (P13954206075838134029.a n : ℤ) = A375257 (n + 1)

end A375257

/-! ## A375257.P8549536221991564762

`eq[A173523(n+1)+1, A063787(n+1)]`
-/

namespace A375257.P8549536221991564762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375257.P8549536221991564762

namespace A375257

/-- `eq[A173523(n+1)+1, A063787(n+1)]` -/
def P8549536221991564762.Spec : Prop :=
  ∀ n, (P8549536221991564762.a n : ℤ) = A375257 (n + 1)

end A375257

/-!
# A375259: Expansion of (1 - 3*x + 6*x^2 - 4*x^3)/(1 - 2*x - 3*x^2)^(9/2).

The programs for A375259, the canonical program `A375259.P1485927689670564593` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375259 has offset 0).

The definition of A375259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375259.P1485927689670564593

`C(n+5, 4)/5*A005717(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A375259

/-- `C(n+5, 4)/5*A005717(n+1)` -/
def P1485927689670564593.Spec : Prop :=
  ∀ n, P1485927689670564593.a n = (A375259 n : ℚ)

end A375259

/-! ## A375259.P17505789619205831590

`(n+5)/(n*(n+2))*((2*n+1)*a(n-1)+3*(n+4)*a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A375259.P17505789619205831590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (n + 5 : ℚ) / (n * (n + 2) : ℚ) * ((2 * n + 1 : ℚ) * a (n - 1) + (3 * (n + 4) : ℚ) * a (n - 2))

end

end A375259.P17505789619205831590

namespace A375259

/-- `(n+5)/(n*(n+2))*((2*n+1)*a(n-1)+3*(n+4)*a(n-2))` -/
def P17505789619205831590.Spec : Prop :=
  ∀ n, P17505789619205831590.a n = (A375259 n : ℚ)

end A375259

/-! ## A375259.P947714703253733704

`A000389(n+5)*A001006(n)`
-/

namespace A375259.P947714703253733704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (n + 5) * A001006 n

end

end A375259.P947714703253733704

namespace A375259

/-- `A000389(n+5)*A001006(n)` -/
def P947714703253733704.Spec : Prop :=
  ∀ n, P947714703253733704.a n = A375259 n

end A375259

/-! ## A375259.P1697556231446253691

`∑[A000332(n+4)]*A001006(n)`
-/

namespace A375259.P1697556231446253691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001006 n

end

end A375259.P1697556231446253691

namespace A375259

/-- `∑[A000332(n+4)]*A001006(n)` -/
def P1697556231446253691.Spec : Prop :=
  ∀ n, P1697556231446253691.a n = A375259 n

end A375259

/-! ## A375259.P10278032888567882491

`A375248(n)/A245551(n)*A375253(n)`
-/

namespace A375259.P10278032888567882491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375248 n : ℚ) / (A245551 n : ℚ) * (A375253 n : ℚ)

end

end A375259.P10278032888567882491

namespace A375259

/-- `A375248(n)/A245551(n)*A375253(n)` -/
def P10278032888567882491.Spec : Prop :=
  ∀ n, P10278032888567882491.a n = (A375259 n : ℚ)

end A375259

/-! ## A375259.P5573293641829038284

`abs(A292440(n+2))*A000389(A020710(n))`
-/

namespace A375259.P5573293641829038284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)| * A000389 (A020710 n).toNat

end

end A375259.P5573293641829038284

namespace A375259

/-- `abs(A292440(n+2))*A000389(A020710(n))` -/
def P5573293641829038284.Spec : Prop :=
  ∀ n, P5573293641829038284.a n = A375259 n

end A375259

/-! ## A375259.P7228818244419033182

`(A307573(n)+A307564(n))*A000389(A020710(n))`
-/

namespace A375259.P7228818244419033182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A307573 n + A307564 n) * A000389 (A020710 n).toNat

end

end A375259.P7228818244419033182

namespace A375259

/-- `(A307573(n)+A307564(n))*A000389(A020710(n))` -/
def P7228818244419033182.Spec : Prop :=
  ∀ n, P7228818244419033182.a n = A375259 n

end A375259

/-! ## A375259.P13245796941894777699

`A091187(A052905(n+3))`
-/

namespace A375259.P13245796941894777699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A052905 (n + 3)).toNat

end

end A375259.P13245796941894777699

namespace A375259

/-- `A091187(A052905(n+3))` -/
def P13245796941894777699.Spec : Prop :=
  ∀ n, P13245796941894777699.a n = A375259 n

end A375259

/-! ## A375259.P6795976219022636204

`A001006(n)*A007318(A055999(n+3))`
-/

namespace A375259.P6795976219022636204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n * A007318 (A055999 (n + 3)).toNat

end

end A375259.P6795976219022636204

namespace A375259

/-- `A001006(n)*A007318(A055999(n+3))` -/
def P6795976219022636204.Spec : Prop :=
  ∀ n, P6795976219022636204.a n = A375259 n

end A375259

/-!
# A375260: Expansion of (1 - 3*x + 9*x^2 - 7*x^3)/(1 - 2*x - 3*x^2)^(7/2).

The programs for A375260, the canonical program `A375260.P13671092592411399074` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375260 has offset 0).

The definition of A375260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375260.P13671092592411399074

`C(n+3, 3)*A002426(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375260

/-- `C(n+3, 3)*A002426(n)` -/
def P13671092592411399074.Spec : Prop :=
  ∀ n, P13671092592411399074.a n = A375260 n

theorem P13671092592411399074.correct : P13671092592411399074.Spec := by
  intro n
  simp only [A375260]

end A375260

/-! ## A375260.P7483525888512474652

`(n+3)/n²*((2*n-1)*a(n-1)+3*(n+2)*a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A375260.P7483525888512474652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 3 : ℚ) / (n ^ 2 : ℚ) * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1) + (3 * (n + 2) : ℚ) * a (n - 2))

end

end A375260.P7483525888512474652

namespace A375260

/-- `(n+3)/n²*((2*n-1)*a(n-1)+3*(n+2)*a(n-2))` -/
def P7483525888512474652.Spec : Prop :=
  ∀ n, P7483525888512474652.a n = (A375260 n : ℚ)

end A375260

/-! ## A375260.P12319830683487793695

`A000292(n+1)*A002426(n)`
-/

namespace A375260.P12319830683487793695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A002426 n

end

end A375260.P12319830683487793695

namespace A375260

/-- `A000292(n+1)*A002426(n)` -/
def P12319830683487793695.Spec : Prop :=
  ∀ n, P12319830683487793695.a n = A375260 n

end A375260

/-! ## A375260.P7009801724196932552

`A002426(n)*A005232(2*n+1)`
-/

namespace A375260.P7009801724196932552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A005232 (2 * n + 1)

end

end A375260.P7009801724196932552

namespace A375260

/-- `A002426(n)*A005232(2*n+1)` -/
def P7009801724196932552.Spec : Prop :=
  ∀ n, P7009801724196932552.a n = A375260 n

end A375260

/-! ## A375260.P6723752153794696862

`A171128(A167614(n+2))`
-/

namespace A375260.P6723752153794696862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171128 (A167614 (n + 2)).toNat

end

end A375260.P6723752153794696862

namespace A375260

/-- `A171128(A167614(n+2))` -/
def P6723752153794696862.Spec : Prop :=
  ∀ n, P6723752153794696862.a n = A375260 n

end A375260

/-! ## A375260.P6940166483967030011

`A135091(A034856(n+2)+n+2)`
-/

namespace A375260.P6940166483967030011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135091 (A034856 (n + 2) + (n + 2 : ℤ)).toNat

end

end A375260.P6940166483967030011

namespace A375260

/-- `A135091(A034856(n+2)+n+2)` -/
def P6940166483967030011.Spec : Prop :=
  ∀ n, P6940166483967030011.a n = A375260 n

end A375260

/-! ## A375260.P3584060678249700958

`A002426(n)*A056939(A000124(n+1))`
-/

namespace A375260.P3584060678249700958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n * A056939 (A000124 (n + 1)).toNat

end

end A375260.P3584060678249700958

namespace A375260

/-- `A002426(n)*A056939(A000124(n+1))` -/
def P3584060678249700958.Spec : Prop :=
  ∀ n, P3584060678249700958.a n = A375260 n

end A375260

/-!
# A375261: Smallest n-digit reversible prime with only prime digits.

The programs for A375261, there is no canonical definition to state claims against.
-/

/-! ## A375261.P4544682551182556920

`A375171(∑[n+1])`
-/

namespace A375261.P4544682551182556920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375261.P4544682551182556920

/-! ## A375261.P4053610479099553177

`record[A375171(n+1)/A154231(n)]`
-/

namespace A375261.P4053610479099553177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375171 (n + 1) : ℚ) / (A154231 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375261.P4053610479099553177

/-! ## A375261.P7524609314726656362

`A026105(n)*A375171(A000124(n))`
-/

namespace A375261.P7524609314726656362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026105 n * A375171 (A000124 n).toNat

end

end A375261.P7524609314726656362

/-!
# A375265: a(n) = n/3 if n mod 3 = 0; otherwise a(n) = n/2 if n mod 2 = 0; otherwise a(n) = 3*n + 1.

The programs for A375265, the canonical program `A375265.P16436060166849004059` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375265 has offset 1).

The definition of A375265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375265.P16436060166849004059

`A006370(A186101(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A375265

/-- `A006370(A186101(n+1))` -/
def P16436060166849004059.Spec : Prop :=
  ∀ n, P16436060166849004059.a n = A375265 (n + 1)

theorem P16436060166849004059.correct : P16436060166849004059.Spec := by
  intro n
  simp only [A375265, Nat.add_sub_cancel]

end A375265

/-! ## A375265.P13517843534220238268

`A006370(Δ[Δ[A190798(n)]])`
-/

namespace A375265.P13517843534220238268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190798 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A375265.P13517843534220238268

namespace A375265

/-- `A006370(Δ[Δ[A190798(n)]])` -/
def P13517843534220238268.Spec : Prop :=
  ∀ n, P13517843534220238268.a n = A375265 (n + 1)

end A375265

/-! ## A375265.P11711981675392770301

`A006370(A350515(2*n)+1)`
-/

namespace A375265.P11711981675392770301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A350515 (2 * n) + 1).toNat

end

end A375265.P11711981675392770301

namespace A375265

/-- `A006370(A350515(2*n)+1)` -/
def P11711981675392770301.Spec : Prop :=
  ∀ n, P11711981675392770301.a n = A375265 (n + 1)

end A375265

/-! ## A375265.P18162464291026248873

`A006370(A384042(2*(n+1)))`
-/

namespace A375265.P18162464291026248873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A384042 (2 * (n + 1))).toNat

end

end A375265.P18162464291026248873

namespace A375265

/-- `A006370(A384042(2*(n+1)))` -/
def P18162464291026248873.Spec : Prop :=
  ∀ n, P18162464291026248873.a n = A375265 (n + 1)

end A375265

/-! ## A375265.P16223567418087938610

`A006370(A006370(2*(n+1))-A175676(n+1))`
-/

namespace A375265.P16223567418087938610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006370 (2 * (n + 1)) - A175676 (n + 1)).toNat

end

end A375265.P16223567418087938610

namespace A375265

/-- `A006370(A006370(2*(n+1))-A175676(n+1))` -/
def P16223567418087938610.Spec : Prop :=
  ∀ n, P16223567418087938610.a n = A375265 (n + 1)

end A375265

/-!
# A375267: Number of iterations of the A375265 map to reach 1 starting from n, or -1 if 1 is never reached.

The programs for A375267, there is no canonical definition to state claims against.
-/

/-! ## A375267.P9867845994141294680

`A006577((n+1)/3^val(n+1, 3))+val(n+1, 3)`
-/

namespace A375267.P9867845994141294680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat + (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A375267.P9867845994141294680

/-! ## A375267.P16472757379589884612

`A007949(n+1)+A006577(A038502(n+1))`
-/

namespace A375267.P16472757379589884612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) + A006577 (A038502 (n + 1)).toNat

end

end A375267.P16472757379589884612

/-!
# A375269: 

The programs for A375269, there is no canonical definition to state claims against.
-/

/-! ## A375269.P1386221813463202426

`∏[A115975(n+1)]`
-/

namespace A375269.P1386221813463202426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375269.P1386221813463202426

/-! ## A375269.P4874317607714735902

`a(n-1)*record[n/a(A318464(n))]` with `a(0)=1`
-/

namespace A375269.P4874317607714735902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / f1 (A318464 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375269.P4874317607714735902

/-! ## A375269.P12195025071072094360

`∏[record[A115975(A389101(n))]]`
-/

namespace A375269.P12195025071072094360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115975 (A389101 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375269.P12195025071072094360

/-!
# A375270: Numbers of the form p^Fibonacci(2*k), where p is a prime and k >= 0.

The programs for A375270, the canonical program `A375270.P13061720832720025766` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375270 has offset 1).

The definition of A375270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375270.P13061720832720025766

`filter[A115975(n+1), A181183(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A375270

/-- `filter[A115975(n+1), A181183(#)]` -/
def P13061720832720025766.Spec : Prop :=
  ∀ n, P13061720832720025766.a n = A375270 (n + 1)

theorem P13061720832720025766.correct : P13061720832720025766.Spec := by
  intro n
  simp only [A375270, Nat.add_sub_cancel]

end A375270

/-! ## A375270.P3387501582040651724

`eq[A057427(n), A112329(A166974(n))]`
-/

namespace A375270.P3387501582040651724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A166974 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375270.P3387501582040651724

namespace A375270

/-- `eq[A057427(n), A112329(A166974(n))]` -/
def P3387501582040651724.Spec : Prop :=
  ∀ n, (P3387501582040651724.a n : ℤ) = A375270 (n + 1)

end A375270

/-! ## A375270.P9603641528159692125

`filter[A171561(n+1), A123927(#)]`
-/

namespace A375270.P9603641528159692125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A375270.P9603641528159692125

namespace A375270

/-- `filter[A171561(n+1), A123927(#)]` -/
def P9603641528159692125.Spec : Prop :=
  ∀ n, P9603641528159692125.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P16638210442155518141

`filter[A171561(n+1), A174897(#)]`
-/

namespace A375270.P16638210442155518141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A375270.P16638210442155518141

namespace A375270

/-- `filter[A171561(n+1), A174897(#)]` -/
def P16638210442155518141.Spec : Prop :=
  ∀ n, P16638210442155518141.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P9309535345806854171

`filter[A171561(n+1), A307430(#)]`
-/

namespace A375270.P9309535345806854171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A375270.P9309535345806854171

namespace A375270

/-- `filter[A171561(n+1), A307430(#)]` -/
def P9309535345806854171.Spec : Prop :=
  ∀ n, P9309535345806854171.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P739061531436997130

`filter[A171561(n+1), A340369(#)]`
-/

namespace A375270.P739061531436997130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A375270.P739061531436997130

namespace A375270

/-- `filter[A171561(n+1), A340369(#)]` -/
def P739061531436997130.Spec : Prop :=
  ∀ n, P739061531436997130.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P1820057769366246787

`filter[A171561(n+1), A353799(#)]`
-/

namespace A375270.P1820057769366246787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A375270.P1820057769366246787

namespace A375270

/-- `filter[A171561(n+1), A353799(#)]` -/
def P1820057769366246787.Spec : Prop :=
  ∀ n, P1820057769366246787.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P1051827367315077587

`record[A240230(n+1)%A260001(n+1)]`
-/

namespace A375270.P1051827367315077587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240230 (n + 1)) (A260001 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375270.P1051827367315077587

namespace A375270

/-- `record[A240230(n+1)%A260001(n+1)]` -/
def P1051827367315077587.Spec : Prop :=
  ∀ n, P1051827367315077587.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P12825325056447153071

`record[A240230(n+1)]%A364348(n+1)`
-/

namespace A375270.P12825325056447153071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A364348 (n + 1))

end

end A375270.P12825325056447153071

namespace A375270

/-- `record[A240230(n+1)]%A364348(n+1)` -/
def P12825325056447153071.Spec : Prop :=
  ∀ n, P12825325056447153071.a n = A375270 (n + 1)

end A375270

/-! ## A375270.P8849713893851249542

`filter[A117331(n+1), A181183(#)]`
-/

namespace A375270.P8849713893851249542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A375270.P8849713893851249542

namespace A375270

/-- `filter[A117331(n+1), A181183(#)]` -/
def P8849713893851249542.Spec : Prop :=
  ∀ n, P8849713893851249542.a n = A375270 (n + 1)

end A375270

/-!
# A375271: Partial products of A375270.

The programs for A375271, there is no canonical definition to state claims against.
-/

/-! ## A375271.P2127582078565097769

`∏[A375270(n+1)]`
-/

namespace A375271.P2127582078565097769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375271.P2127582078565097769

/-! ## A375271.P4483411478731372345

`∏[record[A240230(n+1)]]`
-/

namespace A375271.P4483411478731372345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375271.P4483411478731372345

/-! ## A375271.P12090395228493035584

`a(n-1)*A186285(n)` with `a(0)=1`
-/

namespace A375271.P12090395228493035584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A186285 n

end

end A375271.P12090395228493035584

/-! ## A375271.P1371015509021186430

`a(n-1)*A393213(n)` with `a(0)=1`
-/

namespace A375271.P1371015509021186430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A393213 n

end

end A375271.P1371015509021186430

/-! ## A375271.P7639776664735994746

`∏[∪[A015919(n+1), A030078(n+1)]]`
-/

namespace A375271.P7639776664735994746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375271.P7639776664735994746

/-! ## A375271.P8182337153551910206

`∏[A186285(n+1)]/A186285(n+1)`
-/

namespace A375271.P8182337153551910206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A186285 (n + 1) : ℚ)

end

end A375271.P8182337153551910206

/-!
# A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

The programs for A375272, the canonical program `A375272.P13151626788742865521` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375272 has offset 1).

The definition of A375272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375272

/-- `log2(A331109(n+1))` -/
def P13151626788742865521.Spec : Prop :=
  ∀ n, P13151626788742865521.a n = (A375272 (n + 1) : ℝ)

end A375272

/-! ## A375272.P10717056502177092734

`∑{e}[n+1, A112310(#)]`
-/

namespace A375272.P10717056502177092734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A112310 (Nat.factorization (f1 n) p)

end

end A375272.P10717056502177092734

namespace A375272

/-- `∑{e}[n+1, A112310(#)]` -/
def P10717056502177092734.Spec : Prop :=
  ∀ n, P10717056502177092734.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P8177778220819113903

`A124768(A331109(n+1)-1)`
-/

namespace A375272.P8177778220819113903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A331109 (n + 1) - 1).toNat

end

end A375272.P8177778220819113903

namespace A375272

/-- `A124768(A331109(n+1)-1)` -/
def P8177778220819113903.Spec : Prop :=
  ∀ n, P8177778220819113903.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P15051282282781339914

`A329313(A331109(n+1)-1)`
-/

namespace A375272.P15051282282781339914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A331109 (n + 1) - 1).toNat

end

end A375272.P15051282282781339914

namespace A375272

/-- `A329313(A331109(n+1)-1)` -/
def P15051282282781339914.Spec : Prop :=
  ∀ n, P15051282282781339914.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P6309970712751440077

`A333381(A331109(n+1)-1)`
-/

namespace A375272.P6309970712751440077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A331109 (n + 1) - 1).toNat

end

end A375272.P6309970712751440077

namespace A375272

/-- `A333381(A331109(n+1)-1)` -/
def P6309970712751440077.Spec : Prop :=
  ∀ n, P6309970712751440077.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P14743691906460255368

`gcd(A122598(n), A385378(n+1))`
-/

namespace A375272.P14743691906460255368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122598 n) (A385378 (n + 1))

end

end A375272.P14743691906460255368

namespace A375272

/-- `gcd(A122598(n), A385378(n+1))` -/
def P14743691906460255368.Spec : Prop :=
  ∀ n, (P14743691906460255368.a n : ℤ) = A375272 (n + 1)

end A375272

/-! ## A375272.P12187563046642220285

`and(A086827(n+1), A385378(n+1))`
-/

namespace A375272.P12187563046642220285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A385378 (n + 1))

end

end A375272.P12187563046642220285

namespace A375272

/-- `and(A086827(n+1), A385378(n+1))` -/
def P12187563046642220285.Spec : Prop :=
  ∀ n, P12187563046642220285.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P5361359986762767750

`A362412(A015052((n+1)²)²)`
-/

namespace A375272.P5361359986762767750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A015052 ((n + 1) ^ 2) ^ 2).toNat

end

end A375272.P5361359986762767750

namespace A375272

/-- `A362412(A015052((n+1)²)²)` -/
def P5361359986762767750.Spec : Prop :=
  ∀ n, P5361359986762767750.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P938738185624658441

`∑{e}[n+1, A374515(A006356(#))]`
-/

namespace A375272.P938738185624658441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A374515 (A006356 (Nat.factorization (f1 n) p)).toNat

end

end A375272.P938738185624658441

namespace A375272

/-- `∑{e}[n+1, A374515(A006356(#))]` -/
def P938738185624658441.Spec : Prop :=
  ∀ n, P938738185624658441.a n = A375272 (n + 1)

end A375272

/-! ## A375272.P16083689906331809971

`∑{e}[n+1, A303975(A003463(#+1))]`
-/

namespace A375272.P16083689906331809971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A303975 (A003463 (Nat.factorization (f1 n) p + 1)).toNat

end

end A375272.P16083689906331809971

namespace A375272

/-- `∑{e}[n+1, A303975(A003463(#+1))]` -/
def P16083689906331809971.Spec : Prop :=
  ∀ n, P16083689906331809971.a n = A375272 (n + 1)

end A375272

/-!
# A375273: Expansion of 1/(1 - 2*x - 3*x^2 - 4*x^3 + 4*x^4).

The programs for A375273, the canonical program `A375273.P8162685324999017586` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375273 has offset 0).

The definition of A375273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-3x^2-4x^3+4x^4))` (program `A375273.P8162685324999017586`, by `A375273.P8162685324999017586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375273.P8162685324999017586

`ogf(1/(1-2x-3x^2-4x^3+4x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375273

/-- `ogf(1/(1-2x-3x^2-4x^3+4x^4))` -/
def P8162685324999017586.Spec : Prop :=
  ∀ n, P8162685324999017586.a n = A375273 n

theorem P8162685324999017586.correct : P8162685324999017586.Spec := by
  intro n
  simp only [A375273]

end A375273

/-! ## A375273.P15773967775940744227

`2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=24`
-/

namespace A375273.P15773967775940744227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7, 24] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A375273.P15773967775940744227

namespace A375273

/-- `2*a(n-1)+3*a(n-2)+4*a(n-3)-4*a(n-4)` -/
def P15773967775940744227.Spec : Prop :=
  ∀ n, P15773967775940744227.a n = A375273 n

end A375273

/-!
# A375275: Expansion of (1 - x + x^2)/(1 - 2*x + 3*x^2 + 2*x^3 + x^4).

The programs for A375275, the canonical program `A375275.P9566734321034662520` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375275 has offset 0).

The definition of A375275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2)/(1-2x+3x^2+2x^3+x^4))` (program `A375275.P9566734321034662520`, by `A375275.P9566734321034662520.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375275.P9566734321034662520

`ogf((1-x+x^2)/(1-2x+3x^2+2x^3+x^4))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375275

/-- `ogf((1-x+x^2)/(1-2x+3x^2+2x^3+x^4))` -/
def P9566734321034662520.Spec : Prop :=
  ∀ n, P9566734321034662520.a n = A375275 n

theorem P9566734321034662520.correct : P9566734321034662520.Spec := by
  intro n
  simp only [A375275]

end A375275

/-! ## A375275.P7214977427845275126

`2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=-5`
-/

namespace A375275.P7214977427845275126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, -5] fun n a =>
  2 * a (n - 1) - 3 * a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A375275.P7214977427845275126

namespace A375275

/-- `2*a(n-1)-3*a(n-2)-2*a(n-3)-a(n-4)` -/
def P7214977427845275126.Spec : Prop :=
  ∀ n, P7214977427845275126.a n = A375275 n

end A375275

/-! ## A375275.P1238030004063457310

`A104862(Δ[n²])`
-/

namespace A375275.P1238030004063457310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375275.P1238030004063457310

namespace A375275

/-- `A104862(Δ[n²])` -/
def P1238030004063457310.Spec : Prop :=
  ∀ n, P1238030004063457310.a n = A375275 n

end A375275

/-! ## A375275.P15895255240263675247

`or(char[1], A104862(2*n+1))`
-/

namespace A375275.P15895255240263675247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A104862 (2 * n + 1))

end

end A375275.P15895255240263675247

namespace A375275

/-- `or(char[1], A104862(2*n+1))` -/
def P15895255240263675247.Spec : Prop :=
  ∀ n, P15895255240263675247.a n = A375275 n

end A375275

/-! ## A375275.P10395825013054445210

`A104862(2*n+1)+A101455(2*n)`
-/

namespace A375275.P10395825013054445210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (2 * n + 1) + A101455 (2 * n)

end

end A375275.P10395825013054445210

namespace A375275

/-- `A104862(2*n+1)+A101455(2*n)` -/
def P10395825013054445210.Spec : Prop :=
  ∀ n, P10395825013054445210.a n = A375275 n

end A375275

/-! ## A375275.P12939721555540652293

`A354354(2*n)+A104862(2*n+1)`
-/

namespace A375275.P12939721555540652293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (2 * n) + A104862 (2 * n + 1)

end

end A375275.P12939721555540652293

namespace A375275

/-- `A354354(2*n)+A104862(2*n+1)` -/
def P12939721555540652293.Spec : Prop :=
  ∀ n, P12939721555540652293.a n = A375275 n

end A375275

/-! ## A375275.P16196610910295191886

`A104862(2*n+1)+char[A001566(n+3)]`
-/

namespace A375275.P16196610910295191886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001566 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A375275.P16196610910295191886

namespace A375275

/-- `A104862(2*n+1)+char[A001566(n+3)]` -/
def P16196610910295191886.Spec : Prop :=
  ∀ n, P16196610910295191886.a n = A375275 n

end A375275

/-! ## A375275.P18150403790696590759

`A104862(2*n+1)+A000035(2*(n+1))`
-/

namespace A375275.P18150403790696590759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (2 * n + 1) + A000035 (2 * (n + 1))

end

end A375275.P18150403790696590759

namespace A375275

/-- `A104862(2*n+1)+A000035(2*(n+1))` -/
def P18150403790696590759.Spec : Prop :=
  ∀ n, P18150403790696590759.a n = A375275 n

end A375275

/-! ## A375275.P14412695228705798423

`A104862(2*n+1)+A014744(A014752(n+1))`
-/

namespace A375275.P14412695228705798423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (2 * n + 1) + A014744 (A014752 (n + 1)).toNat

end

end A375275.P14412695228705798423

namespace A375275

/-- `A104862(2*n+1)+A014744(A014752(n+1))` -/
def P14412695228705798423.Spec : Prop :=
  ∀ n, P14412695228705798423.a n = A375275 n

end A375275

/-! ## A375275.P9814406468032804065

`A104862(2*n+1)+A014744(A014753(n+1))`
-/

namespace A375275.P9814406468032804065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104862 (2 * n + 1) + A014744 (A014753 (n + 1)).toNat

end

end A375275.P9814406468032804065

namespace A375275

/-- `A104862(2*n+1)+A014744(A014753(n+1))` -/
def P9814406468032804065.Spec : Prop :=
  ∀ n, P9814406468032804065.a n = A375275 n

end A375275

/-!
# A375276: Expansion of 1/sqrt(1 - 4*x - 8*x^3 + 4*x^4).

The programs for A375276, there is no canonical definition to state claims against.
-/

/-! ## A375276.P11787633800106882161

`A108141(A114121(n))`
-/

namespace A375276.P11787633800106882161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A114121 n).toNat

end

end A375276.P11787633800106882161

/-! ## A375276.P7964243971489420675

`A061017(∑[A327505(n+3)+1])`
-/

namespace A375276.P7964243971489420675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327505 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375276.P7964243971489420675

/-!
# A375277: a(n) = n! (mod nextprime(n)).

The programs for A375277, there is no canonical definition to state claims against.
-/

/-! ## A375277.P5335300519053605496

`A360825(n)-A185013(n)`
-/

namespace A375277.P5335300519053605496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 n - A185013 n

end

end A375277.P5335300519053605496

/-! ## A375277.P12285210991882137629

`gcd(Δ[A000720(n+1)], A360825(n))`
-/

namespace A375277.P12285210991882137629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A360825 n)

end

end A375277.P12285210991882137629

/-! ## A375277.P17930629088250819865

`A360825(n)-A142150(A103310(n))`
-/

namespace A375277.P17930629088250819865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 n - A142150 (A103310 n).toNat

end

end A375277.P17930629088250819865

/-! ## A375277.P8828231774985292153

`A360825(n)-A082784(A000040(n+1))`
-/

namespace A375277.P8828231774985292153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 n - A082784 (A000040 (n + 1)).toNat

end

end A375277.P8828231774985292153

/-! ## A375277.P17465934222037419288

`gcd(A025560(n+1), A360825(n))`
-/

namespace A375277.P17465934222037419288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025560 (n + 1)) (A360825 n)

end

end A375277.P17465934222037419288

/-! ## A375277.P17098090128117607002

`gcd(A205825(n), A360825(n))`
-/

namespace A375277.P17098090128117607002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205825 n) (A360825 n)

end

end A375277.P17098090128117607002

/-! ## A375277.P6959424316041522230

`n!%A151800(n)`
-/

namespace A375277.P6959424316041522230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.factorial n : ℤ) (A151800 n)

end

end A375277.P6959424316041522230

/-! ## A375277.P17368453352384916646

`A000142(n)%A151800(n)`
-/

namespace A375277.P17368453352384916646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 n) (A151800 n)

end

end A375277.P17368453352384916646

/-! ## A375277.P5407139559443686741

`A360825(n)-A023533(A023036(3*(n+1)))`
-/

namespace A375277.P5407139559443686741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360825 n - A023533 (A023036 (3 * (n + 1))).toNat

end

end A375277.P5407139559443686741

/-!
# A375278: Expansion of 1/((1 - x - x^3)^2 - 4*x^4).

The programs for A375278, the canonical program `A375278.P12232262168327481561` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375278 has offset 0).

The definition of A375278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-2x^3-2x^4+x^6))` (program `A375278.P12232262168327481561`, by `A375278.P12232262168327481561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375278.P12232262168327481561

`ogf(1/(1-2x+x^2-2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375278

/-- `ogf(1/(1-2x+x^2-2x^3-2x^4+x^6))` -/
def P12232262168327481561.Spec : Prop :=
  ∀ n, P12232262168327481561.a n = A375278 n

theorem P12232262168327481561.correct : P12232262168327481561.Spec := by
  intro n
  simp only [A375278]

end A375278

/-! ## A375278.P12535763077902429807

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=15, a(5)=34`
-/

namespace A375278.P12535763077902429807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6, 15, 34] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A375278.P12535763077902429807

namespace A375278

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P12535763077902429807.Spec : Prop :=
  ∀ n, P12535763077902429807.a n = A375278 n

end A375278

/-! ## A375278.P11425003982886420723

`A392541(Δ[n²])/2`
-/

namespace A375278.P11425003982886420723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392541 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A375278.P11425003982886420723

namespace A375278

/-- `A392541(Δ[n²])/2` -/
def P11425003982886420723.Spec : Prop :=
  ∀ n, P11425003982886420723.a n = (A375278 n : ℚ)

end A375278

/-! ## A375278.P8468642182255381119

`A289918(2*(n+2))/2`
-/

namespace A375278.P8468642182255381119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289918 (2 * (n + 2)) : ℚ) / 2

end

end A375278.P8468642182255381119

namespace A375278

/-- `A289918(2*(n+2))/2` -/
def P8468642182255381119.Spec : Prop :=
  ∀ n, P8468642182255381119.a n = (A375278 n : ℚ)

end A375278

/-! ## A375278.P16672913129084599997

`∏{p}[A032742(A289918(2*(n+2))^(A326629(n)+1)), #]`
-/

namespace A375278.P16672913129084599997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A289918 (2 * (n + 2)) : ℚ) ^ (A326629 n + 1 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A375278.P16672913129084599997

namespace A375278

/-- `∏{p}[A032742(A289918(2*(n+2))^(A326629(n)+1)), #]` -/
def P16672913129084599997.Spec : Prop :=
  ∀ n, (P16672913129084599997.a n : ℤ) = A375278 n

end A375278

/-!
# A375279: Expansion of (1 - x - x^3)/((1 - x - x^3)^2 - 4*x^4).

The programs for A375279, the canonical program `A375279.P16351768268297136819` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375279 has offset 0).

The definition of A375279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` (program `A375279.P16351768268297136819`, by `A375279.P16351768268297136819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375279.P16351768268297136819

`ogf((1-x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375279

/-- `ogf((1-x-x^3)/(1-2x+x^2-2x^3-2x^4+x^6))` -/
def P16351768268297136819.Spec : Prop :=
  ∀ n, P16351768268297136819.a n = A375279 n

theorem P16351768268297136819.correct : P16351768268297136819.Spec := by
  intro n
  simp only [A375279]

end A375279

/-! ## A375279.P16131319809565950738

`2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=7, a(5)=16`
-/

namespace A375279.P16131319809565950738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 7, 16] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 3) + 2 * a (n - 4) - a (n - 6)

end

end A375279.P16131319809565950738

namespace A375279

/-- `2*a(n-1)-a(n-2)+2*a(n-3)+2*a(n-4)-a(n-6)` -/
def P16131319809565950738.Spec : Prop :=
  ∀ n, P16131319809565950738.a n = A375279 n

end A375279

/-! ## A375279.P18319674703084625717

`A014682(A247917(2*n)+A000930(2*n))`
-/

namespace A375279.P18319674703084625717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A247917 (2 * n) + A000930 (2 * n)).toNat

end

end A375279.P18319674703084625717

namespace A375279

/-- `A014682(A247917(2*n)+A000930(2*n))` -/
def P18319674703084625717.Spec : Prop :=
  ∀ n, P18319674703084625717.a n = A375279 n

end A375279

/-!
# A375282: Expansion of (1 - x - x^4)/((1 - x - x^4)^2 - 4*x^5).

The programs for A375282, the canonical program `A375282.P18132557396716532579` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375282 has offset 0).

The definition of A375282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` (program `A375282.P18132557396716532579`, by `A375282.P18132557396716532579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375282.P18132557396716532579

`ogf((1-x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375282

/-- `ogf((1-x-x^4)/(1-2x+x^2-2x^4-2x^5+x^8))` -/
def P18132557396716532579.Spec : Prop :=
  ∀ n, P18132557396716532579.a n = A375282 n

theorem P18132557396716532579.correct : P18132557396716532579.Spec := by
  intro n
  simp only [A375282]

end A375282

/-! ## A375282.P14773646332081129908

`2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=7, a(6)=16, a(7)=29`
-/

namespace A375282.P14773646332081129908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 7, 16, 29] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 4) + 2 * a (n - 5) - a (n - 8)

end

end A375282.P14773646332081129908

namespace A375282

/-- `2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` -/
def P14773646332081129908.Spec : Prop :=
  ∀ n, P14773646332081129908.a n = A375282 n

end A375282

/-! ## A375282.P7744288545806801148

`A292402(abs(2*n-1))`
-/

namespace A375282.P7744288545806801148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292402 |(2 * n : ℤ) - 1|.toNat

end

end A375282.P7744288545806801148

namespace A375282

/-- `A292402(abs(2*n-1))` -/
def P7744288545806801148.Spec : Prop :=
  ∀ n, P7744288545806801148.a n = A375282 n

end A375282

/-! ## A375282.P9557721852586944110

`A292402(A004273(n))+A000007(n)`
-/

namespace A375282.P9557721852586944110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292402 (A004273 n).toNat + A000007 n

end

end A375282.P9557721852586944110

namespace A375282

/-- `A292402(A004273(n))+A000007(n)` -/
def P9557721852586944110.Spec : Prop :=
  ∀ n, P9557721852586944110.a n = A375282 n

end A375282

/-! ## A375282.P1523806047722700631

`A364838(A375284(n+1))`
-/

namespace A375282.P1523806047722700631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364838 (A375284 (n + 1)).toNat

end

end A375282.P1523806047722700631

namespace A375282

/-- `A364838(A375284(n+1))` -/
def P1523806047722700631.Spec : Prop :=
  ∀ n, P1523806047722700631.a n = A375282 n

end A375282

/-!
# A375283: Expansion of 1/((1 - x - x^4)^2 - 4*x^5).

The programs for A375283, the canonical program `A375283.P528870038181462920` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375283 has offset 0).

The definition of A375283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-2x^4-2x^5+x^8))` (program `A375283.P528870038181462920`, by `A375283.P528870038181462920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375283.P528870038181462920

`ogf(1/(1-2x+x^2-2x^4-2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375283

/-- `ogf(1/(1-2x+x^2-2x^4-2x^5+x^8))` -/
def P528870038181462920.Spec : Prop :=
  ∀ n, P528870038181462920.a n = A375283 n

theorem P528870038181462920.correct : P528870038181462920.Spec := by
  intro n
  simp only [A375283]

end A375283

/-! ## A375283.P3551687156586040851

`2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=16, a(6)=35, a(7)=68`
-/

namespace A375283.P3551687156586040851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 7, 16, 35, 68] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 4) + 2 * a (n - 5) - a (n - 8)

end

end A375283.P3551687156586040851

namespace A375283

/-- `2*a(n-1)-a(n-2)+2*a(n-4)+2*a(n-5)-a(n-8)` -/
def P3551687156586040851.Spec : Prop :=
  ∀ n, P3551687156586040851.a n = A375283 n

end A375283

/-! ## A375283.P13902747098694871731

`A292402(2*(n+2))/2`
-/

namespace A375283.P13902747098694871731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292402 (2 * (n + 2)) : ℚ) / 2

end

end A375283.P13902747098694871731

namespace A375283

/-- `A292402(2*(n+2))/2` -/
def P13902747098694871731.Spec : Prop :=
  ∀ n, P13902747098694871731.a n = (A375283 n : ℚ)

end A375283

/-! ## A375283.P16571412435558623121

`∑[A004526(Δ[A292402(2*(n+1))])]`
-/

namespace A375283.P16571412435558623121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292402 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375283.P16571412435558623121

namespace A375283

/-- `∑[A004526(Δ[A292402(2*(n+1))])]` -/
def P16571412435558623121.Spec : Prop :=
  ∀ n, P16571412435558623121.a n = A375283 n

end A375283

/-! ## A375283.P10931491545657164659

`Δ[A008619(∑[A292402(2*(n+1))])]`
-/

namespace A375283.P10931491545657164659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292402 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375283.P10931491545657164659

namespace A375283

/-- `Δ[A008619(∑[A292402(2*(n+1))])]` -/
def P10931491545657164659.Spec : Prop :=
  ∀ n, P10931491545657164659.a n = A375283 n

end A375283

/-!
# A375284: Expansion of (1 - x - x^5)/((1 - x - x^5)^2 - 4*x^6).

The programs for A375284, the canonical program `A375284.P17066847335270575373` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375284 has offset 0).

The definition of A375284 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^5)/(1-2x+x^2-2x^5-2x^6+x^10))` (program `A375284.P17066847335270575373`, by `A375284.P17066847335270575373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375284.P17066847335270575373

`ogf((1-x-x^5)/(1-2x+x^2-2x^5-2x^6+x^10))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375284

/-- `ogf((1-x-x^5)/(1-2x+x^2-2x^5-2x^6+x^10))` -/
def P17066847335270575373.Spec : Prop :=
  ∀ n, P17066847335270575373.a n = A375284 n

theorem P17066847335270575373.correct : P17066847335270575373.Spec := by
  intro n
  simp only [A375284]

end A375284

/-! ## A375284.P10773851810375667347

`2*a(n-1)-a(n-2)+2*a(n-5)+2*a(n-6)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2, a(6)=7, a(7)=16, a(8)=29, a(9)=46`
-/

namespace A375284.P10773851810375667347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 2, 7, 16, 29, 46] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 5) + 2 * a (n - 6) - a (n - 10)

end

end A375284.P10773851810375667347

namespace A375284

/-- `2*a(n-1)-a(n-2)+2*a(n-5)+2*a(n-6)-a(n-10)` -/
def P10773851810375667347.Spec : Prop :=
  ∀ n, P10773851810375667347.a n = A375284 n

end A375284

/-! ## A375284.P15859403689042438102

`filter[A212369(2*n+1), A051731(#)]`
-/

namespace A375284.P15859403689042438102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A051731 (f1 j).toNat = 1) n)

end

end A375284.P15859403689042438102

namespace A375284

/-- `filter[A212369(2*n+1), A051731(#)]` -/
def P15859403689042438102.Spec : Prop :=
  ∀ n, P15859403689042438102.a n = A375284 n

end A375284

/-! ## A375284.P9950899743290585793

`filter[A212369(2*n+1), A102609(#)]`
-/

namespace A375284.P9950899743290585793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A375284.P9950899743290585793

namespace A375284

/-- `filter[A212369(2*n+1), A102609(#)]` -/
def P9950899743290585793.Spec : Prop :=
  ∀ n, P9950899743290585793.a n = A375284 n

end A375284

/-! ## A375284.P2940703726181535382

`filter[A212369(2*n+1), A103842(#)]`
-/

namespace A375284.P2940703726181535382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212369 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103842 (f1 j).toNat = 1) n)

end

end A375284.P2940703726181535382

namespace A375284

/-- `filter[A212369(2*n+1), A103842(#)]` -/
def P2940703726181535382.Spec : Prop :=
  ∀ n, P2940703726181535382.a n = A375284 n

end A375284

/-!
# A375285: Expansion of 1/((1 - x - x^5)^2 - 4*x^6).

The programs for A375285, the canonical program `A375285.P4048843750244946724` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375285 has offset 0).

The definition of A375285 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2-2x^5-2x^6+x^10))` (program `A375285.P4048843750244946724`, by `A375285.P4048843750244946724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375285.P4048843750244946724

`ogf(1/(1-2x+x^2-2x^5-2x^6+x^10))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375285

/-- `ogf(1/(1-2x+x^2-2x^5-2x^6+x^10))` -/
def P4048843750244946724.Spec : Prop :=
  ∀ n, P4048843750244946724.a n = A375285 n

theorem P4048843750244946724.correct : P4048843750244946724.Spec := by
  intro n
  simp only [A375285]

end A375285

/-! ## A375285.P1058924119545694928

`2*a(n-1)-a(n-2)+2*a(n-5)+2*a(n-6)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=8, a(6)=17, a(7)=36, a(8)=69, a(9)=120`
-/

namespace A375285.P1058924119545694928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 5, 8, 17, 36, 69, 120] fun n a =>
  2 * a (n - 1) - a (n - 2) + 2 * a (n - 5) + 2 * a (n - 6) - a (n - 10)

end

end A375285.P1058924119545694928

namespace A375285

/-- `2*a(n-1)-a(n-2)+2*a(n-5)+2*a(n-6)-a(n-10)` -/
def P1058924119545694928.Spec : Prop :=
  ∀ n, P1058924119545694928.a n = A375285 n

end A375285

/-! ## A375285.P14287190534999284281

`∑[A319318(A173925(3*n))]`
-/

namespace A375285.P14287190534999284281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319318 (A173925 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375285.P14287190534999284281

namespace A375285

/-- `∑[A319318(A173925(3*n))]` -/
def P14287190534999284281.Spec : Prop :=
  ∀ n, P14287190534999284281.a n = A375285 n

end A375285

/-! ## A375285.P1483770474836743384

`∑[A058058(n+3)%A147799(n+1)]`
-/

namespace A375285.P1483770474836743384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058058 (n + 3)) (A147799 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375285.P1483770474836743384

namespace A375285

/-- `∑[A058058(n+3)%A147799(n+1)]` -/
def P1483770474836743384.Spec : Prop :=
  ∀ n, P1483770474836743384.a n = A375285 n

end A375285

/-!
# A375286: a(n) = f(1) + f(2) + ... + f(n), where f(n) = (-2)^Omega(n) = A165872(n).

The programs for A375286, the canonical program `A375286.P17671947745030548645` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375286 has offset 1).

The definition of A375286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375286.P5923228835925540886

`∑[(-2)^∑{e}[n+1, #]]`
-/

namespace A375286.P5923228835925540886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375286.P5923228835925540886

namespace A375286

/-- `∑[(-2)^∑{e}[n+1, #]]` -/
def P5923228835925540886.Spec : Prop :=
  ∀ n, P5923228835925540886.a n = A375286 (n + 1)

end A375286

/-! ## A375286.P17671947745030548645

`∑[∏{e}[n+1, (-2)^#]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375286

/-- `∑[∏{e}[n+1, (-2)^#]]` -/
def P17671947745030548645.Spec : Prop :=
  ∀ n, P17671947745030548645.a n = A375286 (n + 1)

theorem P17671947745030548645.correct : P17671947745030548645.Spec := by
  intro n
  simp only [A375286, Nat.add_sub_cancel]

end A375286

/-! ## A375286.P3752227010864227286

`a(n-1)+(-2)^∑{e}[n+1, #]` with `a(0)=1`
-/

namespace A375286.P3752227010864227286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-2) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A375286.P3752227010864227286

namespace A375286

/-- `a(n-1)+(-2)^∑{e}[n+1, #]` -/
def P3752227010864227286.Spec : Prop :=
  ∀ n, P3752227010864227286.a n = A375286 (n + 1)

end A375286

/-! ## A375286.P16186799692331593616

`∑[A165872(n+1)]`
-/

namespace A375286.P16186799692331593616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375286.P16186799692331593616

namespace A375286

/-- `∑[A165872(n+1)]` -/
def P16186799692331593616.Spec : Prop :=
  ∀ n, P16186799692331593616.a n = A375286 (n + 1)

end A375286

/-! ## A375286.P4356051141214878771

`∑[A122803(∑{e}[n+1, #])]`
-/

namespace A375286.P4356051141214878771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375286.P4356051141214878771

namespace A375286

/-- `∑[A122803(∑{e}[n+1, #])]` -/
def P4356051141214878771.Spec : Prop :=
  ∀ n, P4356051141214878771.a n = A375286 (n + 1)

end A375286

/-! ## A375286.P6436450085446052724

`∑[(-2)^A001222(n+1)]`
-/

namespace A375286.P6436450085446052724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-2 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375286.P6436450085446052724

namespace A375286

/-- `∑[(-2)^A001222(n+1)]` -/
def P6436450085446052724.Spec : Prop :=
  ∀ n, P6436450085446052724.a n = (A375286 (n + 1) : ℚ)

end A375286

/-! ## A375286.P7609827282920278197

`∑[A135692(A061142(n+1))]`
-/

namespace A375286.P7609827282920278197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135692 (A061142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375286.P7609827282920278197

namespace A375286

/-- `∑[A135692(A061142(n+1))]` -/
def P7609827282920278197.Spec : Prop :=
  ∀ n, P7609827282920278197.a n = A375286 (n + 1)

end A375286

/-!
# A375288: Expansion of 1/((1 - x + x^3)^2 + 4*x^4).

The programs for A375288, the canonical program `A375288.P13657124262554123047` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375288 has offset 0).

The definition of A375288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+2x^3+2x^4+x^6))` (program `A375288.P13657124262554123047`, by `A375288.P13657124262554123047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375288.P13657124262554123047

`ogf(1/(1-2x+x^2+2x^3+2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375288

/-- `ogf(1/(1-2x+x^2+2x^3+2x^4+x^6))` -/
def P13657124262554123047.Spec : Prop :=
  ∀ n, P13657124262554123047.a n = A375288 n

theorem P13657124262554123047.correct : P13657124262554123047.Spec := by
  intro n
  simp only [A375288]

end A375288

/-! ## A375288.P10944664797714360544

`2*a(n-1)-a(n-2)-2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=2, a(4)=-5, a(5)=-22`
-/

namespace A375288.P10944664797714360544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 2, -5, -22] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6)

end

end A375288.P10944664797714360544

namespace A375288

/-- `2*a(n-1)-a(n-2)-2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P10944664797714360544.Spec : Prop :=
  ∀ n, P10944664797714360544.a n = A375288 n

end A375288

/-!
# A375289: Expansion of (1 - x + x^3)/((1 - x + x^3)^2 + 4*x^4).

The programs for A375289, the canonical program `A375289.P18179068501194224666` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375289 has offset 0).

The definition of A375289 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^3)/(1-2x+x^2+2x^3+2x^4+x^6))` (program `A375289.P18179068501194224666`, by `A375289.P18179068501194224666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375289.P18179068501194224666

`ogf((1-x+x^3)/(1-2x+x^2+2x^3+2x^4+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375289

/-- `ogf((1-x+x^3)/(1-2x+x^2+2x^3+2x^4+x^6))` -/
def P18179068501194224666.Spec : Prop :=
  ∀ n, P18179068501194224666.a n = A375289 n

theorem P18179068501194224666.correct : P18179068501194224666.Spec := by
  intro n
  simp only [A375289]

end A375289

/-! ## A375289.P13812354443099908108

`2*a(n-1)-a(n-2)-2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=-5, a(5)=-14`
-/

namespace A375289.P13812354443099908108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 0, -5, -14] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 3) - 2 * a (n - 4) - a (n - 6)

end

end A375289.P13812354443099908108

namespace A375289

/-- `2*a(n-1)-a(n-2)-2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P13812354443099908108.Spec : Prop :=
  ∀ n, P13812354443099908108.a n = A375289 n

end A375289

/-!
# A375290: Expansion of 1/((1 - x + x^4)^2 + 4*x^5).

The programs for A375290, the canonical program `A375290.P12519299654944468551` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375290 has offset 0).

The definition of A375290 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+x^2+2x^4+2x^5+x^8))` (program `A375290.P12519299654944468551`, by `A375290.P12519299654944468551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375290.P12519299654944468551

`ogf(1/(1-2x+x^2+2x^4+2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375290

/-- `ogf(1/(1-2x+x^2+2x^4+2x^5+x^8))` -/
def P12519299654944468551.Spec : Prop :=
  ∀ n, P12519299654944468551.a n = A375290 n

theorem P12519299654944468551.correct : P12519299654944468551.Spec := by
  intro n
  simp only [A375290]

end A375290

/-! ## A375290.P15378479075785432206

`2*a(n-1)-a(n-2)-2*a(n-4)-2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=3, a(5)=-4, a(6)=-21, a(7)=-52`
-/

namespace A375290.P15378479075785432206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 3, -4, -21, -52] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8)

end

end A375290.P15378479075785432206

namespace A375290

/-- `2*a(n-1)-a(n-2)-2*a(n-4)-2*a(n-5)-a(n-8)` -/
def P15378479075785432206.Spec : Prop :=
  ∀ n, P15378479075785432206.a n = A375290 n

end A375290

/-!
# A375291: Expansion of (1 - x + x^4)/((1 - x + x^4)^2 + 4*x^5).

The programs for A375291, the canonical program `A375291.P9017577807919516898` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375291 has offset 0).

The definition of A375291 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^4)/(1-2x+x^2+2x^4+2x^5+x^8))` (program `A375291.P9017577807919516898`, by `A375291.P9017577807919516898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375291.P9017577807919516898

`ogf((1-x+x^4)/(1-2x+x^2+2x^4+2x^5+x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A375291

/-- `ogf((1-x+x^4)/(1-2x+x^2+2x^4+2x^5+x^8))` -/
def P9017577807919516898.Spec : Prop :=
  ∀ n, P9017577807919516898.a n = A375291 n

theorem P9017577807919516898.correct : P9017577807919516898.Spec := by
  intro n
  simp only [A375291]

end A375291

/-! ## A375291.P5121448705683116899

`2*a(n-1)-a(n-2)-2*a(n-4)-2*a(n-5)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=0, a(5)=-5, a(6)=-14, a(7)=-27`
-/

namespace A375291.P5121448705683116899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 0, -5, -14, -27] fun n a =>
  2 * a (n - 1) - a (n - 2) - 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8)

end

end A375291.P5121448705683116899

namespace A375291

/-- `2*a(n-1)-a(n-2)-2*a(n-4)-2*a(n-5)-a(n-8)` -/
def P5121448705683116899.Spec : Prop :=
  ∀ n, P5121448705683116899.a n = A375291 n

end A375291

/-!
# A375294: Number of winning combinations in the game Icosahedron Bingo after n rolls.

The programs for A375294, there is no canonical definition to state claims against.
-/

/-! ## A375294.P18304489103329821366

`A074445(n+1)*A206369(A285391(n))`
-/

namespace A375294.P18304489103329821366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074445 (n + 1) * A206369 (A285391 n).toNat

end

end A375294.P18304489103329821366

/-!
# A375295: Numbers k such that the leaders of maximal weakly increasing runs in the k-th composition in standard order (row k of A066099) are not strictly decreasing.

The programs for A375295, there is no canonical definition to state claims against.
-/

/-! ## A375295.P18127012390852676321

`eq[1, A014081(A375123(n))]`
-/

namespace A375295.P18127012390852676321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375295.P18127012390852676321

/-! ## A375295.P15727995321707363090

`eq[A124764(A375123(n)), A124779(n)]`
-/

namespace A375295.P15727995321707363090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A375123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375295.P15727995321707363090

/-! ## A375295.P10410358182906531027

`eq[A124764(A375123(n)), A158388(n)]`
-/

namespace A375295.P10410358182906531027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A375123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375295.P10410358182906531027

/-! ## A375295.P15870131879564102810

`lt[A000007(n), A124764(A375123(n))]`
-/

namespace A375295.P15870131879564102810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 (A375123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375295.P15870131879564102810

/-! ## A375295.P2164753126608972338

`lt[A124761(A375123(n)), A124761(n)]`
-/

namespace A375295.P2164753126608972338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A375123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375295.P2164753126608972338

/-!
# A375296: Numbers k such that the leaders of maximal weakly increasing runs in the reverse of the k-th composition in standard order (row k of A228351) are not strictly decreasing.

The programs for A375296, there is no canonical definition to state claims against.
-/

/-! ## A375296.P10737730074040021482

`∩[A132016(n+1), A335374(n+1)]`
-/

namespace A375296.P10737730074040021482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375296.P10737730074040021482

/-! ## A375296.P12346724602007927164

`lt[A333939(A020639(n+1)), A124765(n)]`
-/

namespace A375296.P12346724602007927164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A020639 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375296.P12346724602007927164

/-! ## A375296.P12640286802889976006

`∩[A308468(n+1), A335374(n+1)]`
-/

namespace A375296.P12640286802889976006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375296.P12640286802889976006

/-! ## A375296.P13589542607573464710

`∩[A308468(n+1), A375408(n+1)]`
-/

namespace A375296.P13589542607573464710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375296.P13589542607573464710

/-!
# A375297: Number of integer compositions of n matching both of the dashed patterns 23-1 and 1-32.

The programs for A375297, there is no canonical definition to state claims against.
-/

/-! ## A375297.P14279475301688601077

`A351358(A294864(n))`
-/

namespace A375297.P14279475301688601077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (A294864 n).toNat

end

end A375297.P14279475301688601077

/-! ## A375297.P269508941227583

`A351358(∑[A302478(n+1)])`
-/

namespace A375297.P269508941227583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351358 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375297.P269508941227583

/-! ## A375297.P14554132120376089021

`A034450(2*n+3)*A103689(A034386(n))`
-/

namespace A375297.P14554132120376089021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034450 (2 * n + 3) * A103689 (A034386 n).toNat

end

end A375297.P14554132120376089021

/-! ## A375297.P12008072596589053944

`A034450(2*n+3)*A374213(A155747(n+1))`
-/

namespace A375297.P12008072596589053944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034450 (2 * n + 3) * A374213 (A155747 (n + 1)).toNat

end

end A375297.P12008072596589053944

/-!
# A375298: Length of the longest winning path in n X n Hex.

The programs for A375298, there is no canonical definition to state claims against.
-/

/-! ## A375298.P4021692189115004742

`A085031(A368218(n+5))+A000217(n)`
-/

namespace A375298.P4021692189115004742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085031 (A368218 (n + 5)).toNat + A000217 n

end

end A375298.P4021692189115004742

/-! ## A375298.P12199926138167933825

`A376362(A270831(2*n+5))+A000124(n)`
-/

namespace A375298.P12199926138167933825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376362 (A270831 (2 * n + 5)).toNat + A000124 n

end

end A375298.P12199926138167933825

/-! ## A375298.P3989816435319295446

`A006928(A036883(n+1))+∑[n]`
-/

namespace A375298.P3989816435319295446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A036883 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A375298.P3989816435319295446

/-! ## A375298.P5846007059036015262

`A227781(A002203(n))+A000217(n)`
-/

namespace A375298.P5846007059036015262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227781 (A002203 n).toNat + A000217 n

end

end A375298.P5846007059036015262

/-! ## A375298.P16591022132479711935

`A270644(A027998(n))+A000217(n)`
-/

namespace A375298.P16591022132479711935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270644 (A027998 n).toNat + A000217 n

end

end A375298.P16591022132479711935

