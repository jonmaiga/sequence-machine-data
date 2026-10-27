import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A003701: Expansion of e.g.f. exp(x)/cos(x).

The programs for A003701, there is no canonical definition to state claims against.
-/

/-! ## A003701.P9228877444379959687

`A000667(n)-A009739(n)`
-/

namespace A003701.P9228877444379959687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000667 n - A009739 n

end

end A003701.P9228877444379959687

/-! ## A003701.P16201944531943269697

`A009739(n)+Δ[A009334(n)]`
-/

namespace A003701.P16201944531943269697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 n + (f1 (n + 1) - f1 n)

end

end A003701.P16201944531943269697

/-! ## A003701.P15343658976174105248

`A292975(A034856(n+1))-A009739(n)`
-/

namespace A003701.P15343658976174105248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292975 (A034856 (n + 1)).toNat - A009739 n

end

end A003701.P15343658976174105248

/-! ## A003701.P8619268485793381977

`A062161(n)+A062272(n)-A009739(n)`
-/

namespace A003701.P8619268485793381977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + (A062272 n - A009739 n)

end

end A003701.P8619268485793381977

/-! ## A003701.P5347088599147793612

`A230950(n)+A230951(n)-A009739(n)`
-/

namespace A003701.P5347088599147793612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230950 n + (A230951 n - A009739 n)

end

end A003701.P5347088599147793612

/-! ## A003701.P2528564848042459220

`A062272(n)-A000035(n)*A062162(n)`
-/

namespace A003701.P2528564848042459220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 n - A000035 n * A062162 n

end

end A003701.P2528564848042459220

/-! ## A003701.P5107551392847780028

`A062161(n)+A000035(n+1)*A062162(n)`
-/

namespace A003701.P5107551392847780028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062161 n + A000035 (n + 1) * A062162 n

end

end A003701.P5107551392847780028

/-!
# A003703: Expansion of e.g.f. cos(log(1+x)).

The programs for A003703, there is no canonical definition to state claims against.
-/

/-! ## A003703.P15471955651598908307

`A357720(∑[n+2]-1)`
-/

namespace A003703.P15471955651598908307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357720 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A003703.P15471955651598908307

/-! ## A003703.P8392220079216629907

`A242652(n)+n*A009454(n)`
-/

namespace A003703.P8392220079216629907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 n + (n : ℤ) * A009454 n

end

end A003703.P8392220079216629907

/-! ## A003703.P12803560885582017455

`A009454(n+1)+n*A009454(n)`
-/

namespace A003703.P12803560885582017455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009454 (n + 1) + (n : ℤ) * A009454 n

end

end A003703.P12803560885582017455

/-! ## A003703.P6088647970534167050

`A242652(n)+n*A242652(abs(2-n)+1)`
-/

namespace A003703.P6088647970534167050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242652 n + (n : ℤ) * A242652 (|2 - (n : ℤ)| + 1).toNat

end

end A003703.P6088647970534167050

/-! ## A003703.P1839995560132429350

`A009024(n+1)/(n+1)`
-/

namespace A003703.P1839995560132429350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009024 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003703.P1839995560132429350

/-!
# A003705: E.g.f. tan(sin(x)) (odd powers only).

The programs for A003705, there is no canonical definition to state claims against.
-/

/-! ## A003705.P4634601646709971295

`A024225(n+1)/(n+1)`
-/

namespace A003705.P4634601646709971295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024225 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003705.P4634601646709971295

/-! ## A003705.P3297757490623280770

`A009667(n+1)/(2*(n+1))`
-/

namespace A003705.P3297757490623280770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009667 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A003705.P3297757490623280770

/-!
# A003706: Expansion of e.g.f. sin(tan(x)), zeros omitted.

The programs for A003706, there is no canonical definition to state claims against.
-/

/-! ## A003706.P14168651041783671108

`A024226(n+1)/(n+1)`
-/

namespace A003706.P14168651041783671108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024226 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003706.P14168651041783671108

/-! ## A003706.P6978085842792392763

`(-1)^n*A003723(Δ[n²])`
-/

namespace A003706.P6978085842792392763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003723 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003706.P6978085842792392763

/-! ## A003706.P14637497082982428058

`A003723(2*n+1)*A033999(n)`
-/

namespace A003706.P14637497082982428058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 (2 * n + 1) * A033999 n

end

end A003706.P14637497082982428058

/-! ## A003706.P15361740330457320247

`A003723(A005408(n))/A033999(n)`
-/

namespace A003706.P15361740330457320247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003723 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A003706.P15361740330457320247

/-!
# A003708: Expansion of tan(log(1+x)).

The programs for A003708, there is no canonical definition to state claims against.
-/

/-! ## A003708.P8178369771767383948

`A306336(n)-A009007(n)`
-/

namespace A003708.P8178369771767383948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306336 n - A009007 n

end

end A003708.P8178369771767383948

/-! ## A003708.P14329387602318979344

`A175424(A009616(n))+A009597(n)`
-/

namespace A003708.P14329387602318979344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (A009616 n).toNat + A009597 n

end

end A003708.P14329387602318979344

/-!
# A003709: E.g.f. cos(sin(x)) (even powers only).

The programs for A003709, there is no canonical definition to state claims against.
-/

/-! ## A003709.P14518901466086011213

`(-1)^n*A003724(2*n)`
-/

namespace A003709.P14518901466086011213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003724 (2 * n)

end

end A003709.P14518901466086011213

/-! ## A003709.P16166110985019429256

`A003724(2*n)*A033999(n)`
-/

namespace A003709.P16166110985019429256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 (2 * n) * A033999 n

end

end A003709.P16166110985019429256

/-! ## A003709.P14203238809013441306

`A003724(A005843(n))/A033999(n)`
-/

namespace A003709.P14203238809013441306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003724 (A005843 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A003709.P14203238809013441306

/-! ## A003709.P971861041104567981

`A009042(n)/(2*n+1)`
-/

namespace A003709.P971861041104567981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009042 n : ℚ) / (2 * n + 1 : ℚ)

end

end A003709.P971861041104567981

/-! ## A003709.P17624927629613437152

`(-1)^n*A124322(A076921(2*n+1))`
-/

namespace A003709.P17624927629613437152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124322 (A076921 (2 * n + 1)).toNat

end

end A003709.P17624927629613437152

/-!
# A003710: Expansion of e.g.f. cos(tan(x)) (even powers only).

The programs for A003710, there is no canonical definition to state claims against.
-/

/-! ## A003710.P17591007387126428466

`A003723(2*n)*A033999(n)`
-/

namespace A003710.P17591007387126428466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003723 (2 * n) * A033999 n

end

end A003710.P17591007387126428466

/-! ## A003710.P965261289588839808

`A009071(n)/Δ[n²]`
-/

namespace A003710.P965261289588839808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009071 n : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A003710.P965261289588839808

/-! ## A003710.P7771217784895073268

`floor(A009071(n)/A005408(n))`
-/

namespace A003710.P7771217784895073268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009071 n : ℚ) / (A005408 n : ℚ)⌋

end

end A003710.P7771217784895073268

/-! ## A003710.P4029671235216480338

`or(A009071(n)/A005408(n), A000007(n))`
-/

namespace A003710.P4029671235216480338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A009071 n : ℚ) / (A005408 n : ℚ))) (A000007 n)

end

end A003710.P4029671235216480338

/-! ## A003710.P6193448117682445621

`or(A009071(n)/A005408(n), A007318(n)%2)`
-/

namespace A003710.P6193448117682445621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A009071 n : ℚ) / (A005408 n : ℚ))) (Int.tmod (A007318 n) 2)

end

end A003710.P6193448117682445621

/-!
# A003711: Expansion of e.g.f. cos(tanh(x)) (even powers only).

The programs for A003711, there is no canonical definition to state claims against.
-/

/-! ## A003711.P8708090857002556194

`A009088(n)/(2*n+1)`
-/

namespace A003711.P8708090857002556194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009088 n : ℚ) / (2 * n + 1 : ℚ)

end

end A003711.P8708090857002556194

/-! ## A003711.P8519515325883763902

`A006229(2*n)*A033999(n)`
-/

namespace A003711.P8519515325883763902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 (2 * n) * A033999 n

end

end A003711.P8519515325883763902

/-! ## A003711.P9039224926545762500

`A006229(2*n)*A057077(2*n)`
-/

namespace A003711.P9039224926545762500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 (2 * n) * A057077 (2 * n)

end

end A003711.P9039224926545762500

/-! ## A003711.P5173358027996120257

`floor(A009088(n)/record[A348158(n+1)])`
-/

namespace A003711.P5173358027996120257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A009088 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌋

end

end A003711.P5173358027996120257

/-!
# A003712: Expansion of e.g.f. sin(sin(x)) (odd powers only).

The programs for A003712, there is no canonical definition to state claims against.
-/

/-! ## A003712.P12849730958278620081

`A024253(n+1)/(n+1)`
-/

namespace A003712.P12849730958278620081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024253 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003712.P12849730958278620081

/-! ## A003712.P9388723643330294323

`(gcd(3, n%2)-2)*A003724(2*n+1)`
-/

namespace A003712.P9388723643330294323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 3 (n % 2) : ℤ) - 2) * A003724 (2 * n + 1)

end

end A003712.P9388723643330294323

/-! ## A003712.P17620529731052992571

`A033999(n)*A081443(2*n)`
-/

namespace A003712.P17620529731052992571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081443 (2 * n)

end

end A003712.P17620529731052992571

/-! ## A003712.P11495071670635298462

`A003724(Δ[n²])*A033999(n)`
-/

namespace A003712.P11495071670635298462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003724 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A003712.P11495071670635298462

/-! ## A003712.P17211119736753487789

`A062157(n+1)*A081443(2*n)`
-/

namespace A003712.P17211119736753487789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A081443 (2 * n)

end

end A003712.P17211119736753487789

/-!
# A003713: Expansion of e.g.f. log(1/(1+log(1-x))).

The programs for A003713, there is no canonical definition to state claims against.
-/

/-! ## A003713.P5146779770314614878

`abs(A325872(∑[n]+1))`
-/

namespace A003713.P5146779770314614878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A325872 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A003713.P5146779770314614878

/-! ## A003713.P16088742201969918924

`A052809(n+1)/(n+1)`
-/

namespace A003713.P16088742201969918924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052809 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003713.P16088742201969918924

/-! ## A003713.P9202520934683404450

`A089064(n)+A052824(n)`
-/

namespace A003713.P9202520934683404450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089064 n + A052824 n

end

end A003713.P9202520934683404450

/-! ## A003713.P4900187339329094962

`record[gcd(A002262(n), A325872(n+1))]`
-/

namespace A003713.P4900187339329094962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A325872 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003713.P4900187339329094962

/-! ## A003713.P6794353086635961749

`lcm(A033999(n), A325872(A000124(n)))`
-/

namespace A003713.P6794353086635961749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A325872 (A000124 n).toNat)

end

end A003713.P6794353086635961749

/-! ## A003713.P4893746412197634142

`A033999(n+1)*A325872(A000124(n))`
-/

namespace A003713.P4893746412197634142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A325872 (A000124 n).toNat

end

end A003713.P4893746412197634142

/-! ## A003713.P9615355889156419665

`A052828(n)-A104150(n)`
-/

namespace A003713.P9615355889156419665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052828 n - A104150 n

end

end A003713.P9615355889156419665

/-!
# A003714: Fibbinary numbers: if n = F(i1) + F(i2) + ... + F(ik) is the Zeckendorf representation of n (i.e., write n in Fibonacci number system) then a(n) = 2^(i1 - 2) + 2^(i2 - 2) + ... + 2^(ik - 2). Also numbers whose binary representation contains no two adjacent 1's.

The programs for A003714, the canonical program `A003714.P565032106299634425` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003714 has offset 0).

The definition of A003714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A193564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A003714.P565032106299634425

`a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A003714

/-- `a(A193564(n+1))*2^(A003849(n)+1)+A003849(n)` -/
def P565032106299634425.Spec : Prop :=
  ∀ n, P565032106299634425.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P4451103868378427044

`2^(A072649(n)-1)+a(n-A000045(1+A072649(n)))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A003714.P4451103868378427044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 : ℚ) ^ (A072649 n - 1 : ℤ) + a ((n : ℤ) - A000045 (1 + A072649 n).toNat).toNat

end

end A003714.P4451103868378427044

namespace A003714

/-- `2^(A072649(n)-1)+a(n-A000045(1+A072649(n)))` -/
def P4451103868378427044.Spec : Prop :=
  ∀ n, P4451103868378427044.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P2494844010461851927

`A022340(n)/2`
-/

namespace A003714.P2494844010461851927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022340 n : ℚ) / 2

end

end A003714.P2494844010461851927

namespace A003714

/-- `A022340(n)/2` -/
def P2494844010461851927.Spec : Prop :=
  ∀ n, P2494844010461851927.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P375544807704934438

`A277335(n)/3`
-/

namespace A003714.P375544807704934438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277335 n : ℚ) / 3

end

end A003714.P375544807704934438

namespace A003714

/-- `A277335(n)/3` -/
def P375544807704934438.Spec : Prop :=
  ∀ n, P375544807704934438.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P14248885841804544166

`(A048297(n)-1)/3`
-/

namespace A003714.P14248885841804544166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048297 n - 1 : ℚ) / 3

end

end A003714.P14248885841804544166

namespace A003714

/-- `(A048297(n)-1)/3` -/
def P14248885841804544166.Spec : Prop :=
  ∀ n, P14248885841804544166.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P5865864194984922826

`(A022341(n)-1)/4`
-/

namespace A003714.P5865864194984922826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022341 n - 1 : ℚ) / 4

end

end A003714.P5865864194984922826

namespace A003714

/-- `(A022341(n)-1)/4` -/
def P5865864194984922826.Spec : Prop :=
  ∀ n, P5865864194984922826.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P8980738733344595360

`A022341(n)-A048297(n)`
-/

namespace A003714.P8980738733344595360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n - A048297 n

end

end A003714.P8980738733344595360

namespace A003714

/-- `A022341(n)-A048297(n)` -/
def P8980738733344595360.Spec : Prop :=
  ∀ n, P8980738733344595360.a n = A003714 n

end A003714

/-! ## A003714.P14112531568170883960

`A048297(n)-A118113(n)`
-/

namespace A003714.P14112531568170883960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 n - A118113 n

end

end A003714.P14112531568170883960

namespace A003714

/-- `A048297(n)-A118113(n)` -/
def P14112531568170883960.Spec : Prop :=
  ∀ n, P14112531568170883960.a n = A003714 n

end A003714

/-! ## A003714.P14610778351066126507

`A277335(n)-A022340(n)`
-/

namespace A003714.P14610778351066126507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n - A022340 n

end

end A003714.P14610778351066126507

namespace A003714

/-- `A277335(n)-A022340(n)` -/
def P14610778351066126507.Spec : Prop :=
  ∀ n, P14610778351066126507.a n = A003714 n

end A003714

/-! ## A003714.P6017202245695147172

`∪[A022340(n), A022341(n)]`
-/

namespace A003714.P6017202245695147172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P6017202245695147172

namespace A003714

/-- `∪[A022340(n), A022341(n)]` -/
def P6017202245695147172.Spec : Prop :=
  ∀ n, (P6017202245695147172.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P2142352963316284590

`∪[A022341(n), A105425(n)]`
-/

namespace A003714.P2142352963316284590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P2142352963316284590

namespace A003714

/-- `∪[A022341(n), A105425(n)]` -/
def P2142352963316284590.Spec : Prop :=
  ∀ n, (P2142352963316284590.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P16307923024618537220

`∪[A000975(n), A153034(n+1)]`
-/

namespace A003714.P16307923024618537220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P16307923024618537220

namespace A003714

/-- `∪[A000975(n), A153034(n+1)]` -/
def P16307923024618537220.Spec : Prop :=
  ∀ n, (P16307923024618537220.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P13262148538647508743

`∪[A086638(n), A153034(n+1)]`
-/

namespace A003714.P13262148538647508743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P13262148538647508743

namespace A003714

/-- `∪[A086638(n), A153034(n+1)]` -/
def P13262148538647508743.Spec : Prop :=
  ∀ n, (P13262148538647508743.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P742251307678106590

`∪[A153034(n+1), A105425(n)]`
-/

namespace A003714.P742251307678106590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P742251307678106590

namespace A003714

/-- `∪[A153034(n+1), A105425(n)]` -/
def P742251307678106590.Spec : Prop :=
  ∀ n, (P742251307678106590.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P16886953197731509745

`∪[A126684(n+1), A153034(n+1)]`
-/

namespace A003714.P16886953197731509745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P16886953197731509745

namespace A003714

/-- `∪[A126684(n+1), A153034(n+1)]` -/
def P16886953197731509745.Spec : Prop :=
  ∀ n, (P16886953197731509745.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P15591375786803104950

`∪[A153034(n+1), A212591(n+1)]`
-/

namespace A003714.P15591375786803104950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003714.P15591375786803104950

namespace A003714

/-- `∪[A153034(n+1), A212591(n+1)]` -/
def P15591375786803104950.Spec : Prop :=
  ∀ n, (P15591375786803104950.a n : ℤ) = A003714 n

end A003714

/-! ## A003714.P10988892799820968819

`A004743(A219640(n)+1)`
-/

namespace A003714.P10988892799820968819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (A219640 n + 1).toNat

end

end A003714.P10988892799820968819

namespace A003714

/-- `A004743(A219640(n)+1)` -/
def P10988892799820968819.Spec : Prop :=
  ∀ n, P10988892799820968819.a n = A003714 n

end A003714

/-! ## A003714.P3320688838038625457

`record[xor(n, 2*n)/3]`
-/

namespace A003714.P3320688838038625457
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003714.P3320688838038625457

namespace A003714

/-- `record[xor(n, 2*n)/3]` -/
def P3320688838038625457.Spec : Prop :=
  ∀ n, P3320688838038625457.a n = (A003714 n : ℚ)

end A003714

/-! ## A003714.P7732756872365057131

`record[n-and(n, 2*n)]`
-/

namespace A003714.P7732756872365057131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003714.P7732756872365057131

namespace A003714

/-- `record[n-and(n, 2*n)]` -/
def P7732756872365057131.Spec : Prop :=
  ∀ n, P7732756872365057131.a n = A003714 n

end A003714

/-! ## A003714.P602941461936971367

`record[abs(or(2*n, -n))]`
-/

namespace A003714.P602941461936971367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003714.P602941461936971367

namespace A003714

/-- `record[abs(or(2*n, -n))]` -/
def P602941461936971367.Spec : Prop :=
  ∀ n, P602941461936971367.a n = A003714 n

end A003714

/-!
# A003715: Expansion of e.g.f. sin(sin(sin(x))) (odd powers only).

The programs for A003715, there is no canonical definition to state claims against.
-/

/-! ## A003715.P8988682269220062280

`A212261(∑[n+3]+1)`
-/

namespace A003715.P8988682269220062280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212261 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003715.P8988682269220062280

/-! ## A003715.P9275395000948780207

`A212261(Δ[A008778(n)])+A085861(n)`
-/

namespace A003715.P9275395000948780207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212261 (f1 (n + 1) - f1 n).toNat + A085861 n

end

end A003715.P9275395000948780207

/-! ## A003715.P7764702051394596108

`A212261(Δ[A008778(n)])^A304042(n)`
-/

namespace A003715.P7764702051394596108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212261 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A304042 n : ℤ)

end

end A003715.P7764702051394596108

/-!
# A003716: Expansion of e.g.f. tan(sinh(x)) (odd powers only).

The programs for A003716, there is no canonical definition to state claims against.
-/

/-! ## A003716.P2464507807029127793

`A024274(n+1)/(n+1)`
-/

namespace A003716.P2464507807029127793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024274 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003716.P2464507807029127793

/-! ## A003716.P9779452052341371168

`A009683(n+1)/A004277(n+1)`
-/

namespace A003716.P9779452052341371168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009683 (n + 1) : ℚ) / (A004277 (n + 1) : ℚ)

end

end A003716.P9779452052341371168

/-! ## A003716.P10418539036808130552

`A009683(n+1)/A000196((2*(n+1))²)`
-/

namespace A003716.P10418539036808130552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009683 (n + 1) : ℚ) / (A000196 ((2 * (n + 1)) ^ 2) : ℚ)

end

end A003716.P10418539036808130552

/-!
# A003717: Expansion of e.g.f. sin(tanh(x)) (odd powers only).

The programs for A003717, there is no canonical definition to state claims against.
-/

/-! ## A003717.P2777270639557897679

`(-1)^n*A006229(Δ[n²])`
-/

namespace A003717.P2777270639557897679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003717.P2777270639557897679

/-! ## A003717.P7829648845183978709

`A006229(2*n+1)/(-1)^n`
-/

namespace A003717.P7829648845183978709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006229 (2 * n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A003717.P7829648845183978709

/-! ## A003717.P7658770048403845691

`A006229(Δ[n²])*A033999(n)`
-/

namespace A003717.P7658770048403845691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A003717.P7658770048403845691

/-! ## A003717.P9065829165298397157

`A006229(2*n+1)*A057077(2*n)`
-/

namespace A003717.P9065829165298397157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 (2 * n + 1) * A057077 (2 * n)

end

end A003717.P9065829165298397157

/-! ## A003717.P6978701717082249292

`A006229(2*n+1)*A092220(A155212(2*n+1))`
-/

namespace A003717.P6978701717082249292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006229 (2 * n + 1) * A092220 (A155212 (2 * n + 1)).toNat

end

end A003717.P6978701717082249292

/-!
# A003718: E.g.f. tan(tan(x)), zeros omitted.

The programs for A003718, there is no canonical definition to state claims against.
-/

/-! ## A003718.P12153737813765377415

`A024289(n+1)/(n+1)`
-/

namespace A003718.P12153737813765377415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024289 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003718.P12153737813765377415

/-! ## A003718.P10948700351536090368

`A009700(n+1)/(2*(n+1))`
-/

namespace A003718.P10948700351536090368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009700 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A003718.P10948700351536090368

/-! ## A003718.P12040780724298320050

`record[A024289(A059127(n))/A059127(n)]`
-/

namespace A003718.P12040780724298320050
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024289 (A059127 n).toNat : ℚ) / (A059127 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003718.P12040780724298320050

/-! ## A003718.P2032293148940085078

`record[A024289(A133310(n))/A133310(n)]`
-/

namespace A003718.P2032293148940085078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024289 (A133310 n).toNat : ℚ) / (A133310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003718.P2032293148940085078

/-!
# A003719: Expansion of tan(x)*cosh(x).

The programs for A003719, there is no canonical definition to state claims against.
-/

/-! ## A003719.P435648345522038069

`A009739(Δ[n²])`
-/

namespace A003719.P435648345522038069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003719.P435648345522038069

/-! ## A003719.P1382562308534066936

`A062272(Δ[n²])`
-/

namespace A003719.P1382562308534066936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003719.P1382562308534066936

/-! ## A003719.P14216262266973300786

`record[A062272(n*n%2)]`
-/

namespace A003719.P14216262266973300786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062272 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003719.P14216262266973300786

/-! ## A003719.P2202314932269734950

`xor(1, A009739(2*n+1))+1`
-/

namespace A003719.P2202314932269734950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A009739 (2 * n + 1)) + 1

end

end A003719.P2202314932269734950

/-! ## A003719.P11694113562837909163

`or(1, A062272(A005408(n)))`
-/

namespace A003719.P11694113562837909163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062272 (A005408 n).toNat)

end

end A003719.P11694113562837909163

/-!
# A003720: Expansion of e.g.f. tan(tan(tan(x))).

The programs for A003720, there is no canonical definition to state claims against.
-/

/-! ## A003720.P14151524159414873126

`A212267(∑[n+3]+1)`
-/

namespace A003720.P14151524159414873126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212267 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A003720.P14151524159414873126

/-! ## A003720.P13886703641599182402

`record[A212267(eq[2, A172281(n)])]`
-/

namespace A003720.P13886703641599182402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212267 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003720.P13886703641599182402

/-! ## A003720.P14654899246807795104

`record[and(A049310(n), A212267(n+1))]`
-/

namespace A003720.P14654899246807795104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049310 n) (A212267 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003720.P14654899246807795104

/-!
# A003721: Expansion of e.g.f. tan(tanh(x)) (odd powers only).

The programs for A003721, there is no canonical definition to state claims against.
-/

/-! ## A003721.P4778893569769213282

`A024303(n+1)/(n+1)`
-/

namespace A003721.P4778893569769213282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024303 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003721.P4778893569769213282

/-! ## A003721.P13176259440232343265

`A009718(n+1)/(2*(n+1))`
-/

namespace A003721.P13176259440232343265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009718 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

end

end A003721.P13176259440232343265

/-!
# A003722: Expansion of e.g.f. sin(sinh(x)) (odd powers only).

The programs for A003722, there is no canonical definition to state claims against.
-/

/-! ## A003722.P16800907072670887640

`A009059(2*n)`
-/

namespace A003722.P16800907072670887640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009059 (2 * n)

end

end A003722.P16800907072670887640

/-! ## A003722.P1251055157334727953

`A002017(2*n+1)*A033999(n)`
-/

namespace A003722.P1251055157334727953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002017 (2 * n + 1) * A033999 n

end

end A003722.P1251055157334727953

/-! ## A003722.P18160196359160650249

`A002017(A005408(n))/A033999(n)`
-/

namespace A003722.P18160196359160650249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002017 (A005408 n).toNat : ℚ) / (A033999 n : ℚ)

end

end A003722.P18160196359160650249

/-! ## A003722.P8049308476051709470

`or(A000007(n), A009059(A005843(n)))`
-/

namespace A003722.P8049308476051709470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A009059 (A005843 n).toNat)

end

end A003722.P8049308476051709470

/-! ## A003722.P4358799284311754273

`A009059(A005843(n))/A000032(gcd(n+1, n+2))`
-/

namespace A003722.P4358799284311754273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009059 (A005843 n).toNat : ℚ) / (A000032 (Nat.gcd (n + 1) (n + 2)) : ℚ)

end

end A003722.P4358799284311754273

/-!
# A003723: E.g.f. exp(tanh(x)).

The programs for A003723, there is no canonical definition to state claims against.
-/

/-! ## A003723.P7529153999586828571

`A009263(n+1)/(n+1)`
-/

namespace A003723.P7529153999586828571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009263 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003723.P7529153999586828571

/-! ## A003723.P11827338464759081181

`A013123(n)+A013126(n)-A009263(n)`
-/

namespace A003723.P11827338464759081181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013123 n + (A013126 n - A009263 n)

end

end A003723.P11827338464759081181

/-! ## A003723.P17067672653226048784

`A013117(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A003723.P17067672653226048784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A013117 n - (n : ℤ) * a (n - 1)

end

end A003723.P17067672653226048784

/-! ## A003723.P16582894058593967613

`A013117(n)-A009263(n)`
-/

namespace A003723.P16582894058593967613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013117 n - A009263 n

end

end A003723.P16582894058593967613

/-!
# A003724: Number of partitions of n-set into odd blocks.

The programs for A003724, there is no canonical definition to state claims against.
-/

/-! ## A003724.P8432282796818139760

`A124322(A002620(n+1))`
-/

namespace A003724.P8432282796818139760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A002620 (n + 1)).toNat

end

end A003724.P8432282796818139760

/-! ## A003724.P3846089531446021069

`A124322(A076921(n+1))`
-/

namespace A003724.P3846089531446021069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A076921 (n + 1)).toNat

end

end A003724.P3846089531446021069

/-! ## A003724.P10581717812925683586

`A124322(A182531(n+1))`
-/

namespace A003724.P10581717812925683586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A182531 (n + 1)).toNat

end

end A003724.P10581717812925683586

/-! ## A003724.P2186737838185300902

`A124322(∑[∑[A000035(n)]])`
-/

namespace A003724.P2186737838185300902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003724.P2186737838185300902

/-! ## A003724.P974163127020855384

`A124322(∑[A004526(n+1)])`
-/

namespace A003724.P974163127020855384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003724.P974163127020855384

/-! ## A003724.P18380286217154885980

`A124322(∑[n-A004526(n)])`
-/

namespace A003724.P18380286217154885980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003724.P18380286217154885980

/-! ## A003724.P4425263570092579984

`A124322(∑[A008619(n+1)-1])`
-/

namespace A003724.P4425263570092579984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A003724.P4425263570092579984

/-! ## A003724.P17429511455875260414

`A124322(A000217(n)-A002620(n))`
-/

namespace A003724.P17429511455875260414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (A000217 n - A002620 n).toNat

end

end A003724.P17429511455875260414

/-! ## A003724.P4200248061996460246

`A124322(∑[A008619(n)]-A008619(n))`
-/

namespace A003724.P4200248061996460246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124322 (∑ j ∈ Finset.range (n + 1), f1 j - A008619 n).toNat

end

end A003724.P4200248061996460246

/-! ## A003724.P15153832639576901012

`A009224(n+1)/(n+1)`
-/

namespace A003724.P15153832639576901012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009224 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A003724.P15153832639576901012

/-!
# A003725: Expansion of e.g.f. exp( x * exp(-x) ).

The programs for A003725, there is no canonical definition to state claims against.
-/

/-! ## A003725.P14191307682183599683

`A215652(∑[n])`
-/

namespace A003725.P14191307682183599683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215652 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A003725.P14191307682183599683

/-! ## A003725.P11523164012728051238

`A033999(n)*A292952(n)`
-/

namespace A003725.P11523164012728051238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292952 n

end

end A003725.P11523164012728051238

/-! ## A003725.P8547180880671359598

`A129818(∑[n])*A292952(n)`
-/

namespace A003725.P8547180880671359598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129818 (∑ j ∈ Finset.range (n + 1), f1 j) * A292952 n

end

end A003725.P8547180880671359598

/-! ## A003725.P9113074127157081559

`A062157(n+1)*A292952(n)`
-/

namespace A003725.P9113074127157081559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A292952 n

end

end A003725.P9113074127157081559

/-! ## A003725.P14565870174567925995

`A292952(n)/A062157((n+1)²/∏{p}[n+1, #])`
-/

namespace A003725.P14565870174567925995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292952 n : ℚ) / (A062157 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A003725.P14565870174567925995

/-! ## A003725.P12118674448650208684

`A033999(n)*A293015(A034856(n+1))`
-/

namespace A003725.P12118674448650208684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A293015 (A034856 (n + 1)).toNat

end

end A003725.P12118674448650208684

/-! ## A003725.P18147396125761491869

`A292948(∑[n+2]-1)`
-/

namespace A003725.P18147396125761491869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292948 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A003725.P18147396125761491869

/-! ## A003725.P4313368887203126720

`A292973(∑[n+2]-1)`
-/

namespace A003725.P4313368887203126720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292973 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A003725.P4313368887203126720

/-!
# A003726: Numbers with no 3 adjacent 1's in binary expansion.

The programs for A003726, the canonical program `A003726.P14597589249839812416` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003726 has offset 1).

The definition of A003726 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003726.P14597589249839812416

`eq[0, and(n, 2*and(n, 2*n))]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003726

/-- `eq[0, and(n, 2*and(n, 2*n))]` -/
def P14597589249839812416.Spec : Prop :=
  ∀ n, (P14597589249839812416.a n : ℤ) = A003726 (n + 1)

theorem P14597589249839812416.correct : P14597589249839812416.Spec := by
  intro n
  simp only [A003726, Nat.add_sub_cancel]

end A003726

/-! ## A003726.P8768747631896238522

`record[and(n, A269174(n))]`
-/

namespace A003726.P8768747631896238522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A269174 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003726.P8768747631896238522

namespace A003726

/-- `record[and(n, A269174(n))]` -/
def P8768747631896238522.Spec : Prop :=
  ∀ n, P8768747631896238522.a n = A003726 (n + 1)

end A003726

/-! ## A003726.P8563414748111792617

`∑[A319430(n)]-A319430(n)`
-/

namespace A003726.P8563414748111792617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A319430 n

end

end A003726.P8563414748111792617

namespace A003726

/-- `∑[A319430(n)]-A319430(n)` -/
def P8563414748111792617.Spec : Prop :=
  ∀ n, P8563414748111792617.a n = A003726 (n + 1)

end A003726

/-! ## A003726.P7406780605744550459

`record[n-A213370(A213370(n))]`
-/

namespace A003726.P7406780605744550459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A213370 (A213370 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003726.P7406780605744550459

namespace A003726

/-- `record[n-A213370(A213370(n))]` -/
def P7406780605744550459.Spec : Prop :=
  ∀ n, P7406780605744550459.a n = A003726 (n + 1)

end A003726

/-! ## A003726.P9763130511199366774

`comp[A004781(n+1)]`
-/

namespace A003726.P9763130511199366774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003726.P9763130511199366774

namespace A003726

/-- `comp[A004781(n+1)]` -/
def P9763130511199366774.Spec : Prop :=
  ∀ n, (P9763130511199366774.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P15818657745761201737

`eq[0, A014081(and(n, 2*n))]`
-/

namespace A003726.P15818657745761201737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003726.P15818657745761201737

namespace A003726

/-- `eq[0, A014081(and(n, 2*n))]` -/
def P15818657745761201737.Spec : Prop :=
  ∀ n, (P15818657745761201737.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P4623480759467154077

`lt[A284569(n), 3]`
-/

namespace A003726.P4623480759467154077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003726.P4623480759467154077

namespace A003726

/-- `lt[A284569(n), 3]` -/
def P4623480759467154077.Spec : Prop :=
  ∀ n, (P4623480759467154077.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P6934435520853465773

`eq[0, A014082(n)]`
-/

namespace A003726.P6934435520853465773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003726.P6934435520853465773

namespace A003726

/-- `eq[0, A014082(n)]` -/
def P6934435520853465773.Spec : Prop :=
  ∀ n, (P6934435520853465773.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P14108356948551904847

`eq[1, A329720(n)]`
-/

namespace A003726.P14108356948551904847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003726.P14108356948551904847

namespace A003726

/-- `eq[1, A329720(n)]` -/
def P14108356948551904847.Spec : Prop :=
  ∀ n, (P14108356948551904847.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P335061889523099568

`lt[A014081(A048735(n)), 1]`
-/

namespace A003726.P335061889523099568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A048735 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003726.P335061889523099568

namespace A003726

/-- `lt[A014081(A048735(n)), 1]` -/
def P335061889523099568.Spec : Prop :=
  ∀ n, (P335061889523099568.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P2065069070476635819

`lt[A348710(A348710(n)), 1]`
-/

namespace A003726.P2065069070476635819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 (A348710 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003726.P2065069070476635819

namespace A003726

/-- `lt[A348710(A348710(n)), 1]` -/
def P2065069070476635819.Spec : Prop :=
  ∀ n, (P2065069070476635819.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P16239202130019705377

`eq[A161903(n), A163617(n)]`
-/

namespace A003726.P16239202130019705377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P16239202130019705377

namespace A003726

/-- `eq[A161903(n), A163617(n)]` -/
def P16239202130019705377.Spec : Prop :=
  ∀ n, (P16239202130019705377.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P5131371663695874073

`eq[A106737(n), A245564(n)]`
-/

namespace A003726.P5131371663695874073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P5131371663695874073

namespace A003726

/-- `eq[A106737(n), A245564(n)]` -/
def P5131371663695874073.Spec : Prop :=
  ∀ n, (P5131371663695874073.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P8654097010065869550

`eq[A106737(n), A246029(n)]`
-/

namespace A003726.P8654097010065869550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P8654097010065869550

namespace A003726

/-- `eq[A106737(n), A246029(n)]` -/
def P8654097010065869550.Spec : Prop :=
  ∀ n, (P8654097010065869550.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P12693659047965695044

`eq[A102376(n), A255298(n)]`
-/

namespace A003726.P12693659047965695044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P12693659047965695044

namespace A003726

/-- `eq[A102376(n), A255298(n)]` -/
def P12693659047965695044.Spec : Prop :=
  ∀ n, (P12693659047965695044.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P10897584598008437304

`eq[A102376(n), A255300(n)]`
-/

namespace A003726.P10897584598008437304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255300 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P10897584598008437304

namespace A003726

/-- `eq[A102376(n), A255300(n)]` -/
def P10897584598008437304.Spec : Prop :=
  ∀ n, (P10897584598008437304.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P6878183923949788555

`eq[A102376(n), A255302(n)]`
-/

namespace A003726.P6878183923949788555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255302 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P6878183923949788555

namespace A003726

/-- `eq[A102376(n), A255302(n)]` -/
def P6878183923949788555.Spec : Prop :=
  ∀ n, (P6878183923949788555.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P4434498289187967730

`eq[A161903(n), A269174(n)]`
-/

namespace A003726.P4434498289187967730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P4434498289187967730

namespace A003726

/-- `eq[A161903(n), A269174(n)]` -/
def P4434498289187967730.Spec : Prop :=
  ∀ n, (P4434498289187967730.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P2815763680272642478

`eq[A163617(n), A269174(n)]`
-/

namespace A003726.P2815763680272642478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P2815763680272642478

namespace A003726

/-- `eq[A163617(n), A269174(n)]` -/
def P2815763680272642478.Spec : Prop :=
  ∀ n, (P2815763680272642478.a n : ℤ) = A003726 (n + 1)

end A003726

/-! ## A003726.P15279225614384323882

`eq[A179821(n), A292272(n)]`
-/

namespace A003726.P15279225614384323882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003726.P15279225614384323882

namespace A003726

/-- `eq[A179821(n), A292272(n)]` -/
def P15279225614384323882.Spec : Prop :=
  ∀ n, (P15279225614384323882.a n : ℤ) = A003726 (n + 1)

end A003726

/-!
# A003727: Expansion of e.g.f. exp(x * cosh(x)).

The programs for A003727, there is no canonical definition to state claims against.
-/

/-! ## A003727.P14351895819182800704

`A123541(∏[dr(A033995(n))])`
-/

namespace A003727.P14351895819182800704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033995 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A003727.P14351895819182800704

/-! ## A003727.P12093393578256097515

`A123541(∏[∑{digits}[A033995(n), #]])`
-/

namespace A003727.P12093393578256097515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033995 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123541 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A003727.P12093393578256097515

/-! ## A003727.P921862151860262847

`A376989(3*n+2)+A121373(n)`
-/

namespace A003727.P921862151860262847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376989 (3 * n + 2) + A121373 n

end

end A003727.P921862151860262847

/-!
# A003729: Number of perfect matchings (or domino tilings) in graph C_{5} X P_{2n}.

The programs for A003729, there is no canonical definition to state claims against.
-/

/-! ## A003729.P17963764479800259534

`A028471(n+1)/A188899(n+1)`
-/

namespace A003729.P17963764479800259534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028471 (n + 1) : ℚ) / (A188899 (n + 1) : ℚ)

end

end A003729.P17963764479800259534

/-! ## A003729.P11401224195407254776

`A028471(n+1)/A005178(2*n+3)`
-/

namespace A003729.P11401224195407254776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028471 (n + 1) : ℚ) / (A005178 (2 * n + 3) : ℚ)

end

end A003729.P11401224195407254776

/-!
# A003730: Number of 2-factors in C_5 X P_n.

The programs for A003730, the canonical program `A003730.P5490994039736038576` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003730 has offset 1).

The definition of A003730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003730.P5490994039736038576

`9*a(n-1)-4*a(n-2)-22*a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=11, a(2)=81, a(3)=666`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003730

/-- `9*a(n-1)-4*a(n-2)-22*a(n-3)+3*a(n-4)` -/
def P5490994039736038576.Spec : Prop :=
  ∀ n, P5490994039736038576.a n = A003730 (n + 1)

theorem P5490994039736038576.correct : P5490994039736038576.Spec := by
  intro n
  simp only [A003730, Nat.add_sub_cancel]

end A003730

/-!
# A003731: Number of Hamiltonian cycles in C_5 X P_n.

The programs for A003731, the canonical program `A003731.P2152749325807349995` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003731 has offset 1).

The definition of A003731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003731.P2152749325807349995

`6*a(n-1)-4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=5, a(2)=30, a(3)=160`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003731

/-- `6*a(n-1)-4*a(n-2)+2*a(n-3)` -/
def P2152749325807349995.Spec : Prop :=
  ∀ n, P2152749325807349995.a n = A003731 (n + 1)

theorem P2152749325807349995.correct : P2152749325807349995.Spec := by
  intro n
  simp only [A003731, Nat.add_sub_cancel]

end A003731

/-! ## A003731.P17420708603740085135

`ogf((1-x+4x^2-2x^3)/(1-6x+4x^2-2x^3))`
-/

namespace A003731.P17420708603740085135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 4, -2] [1, -6, 4, -2] n

end

end A003731.P17420708603740085135

namespace A003731

/-- `ogf((1-x+4x^2-2x^3)/(1-6x+4x^2-2x^3))` -/
def P17420708603740085135.Spec : Prop :=
  ∀ n, P17420708603740085135.a n = A003731 (n + 1)

end A003731

/-! ## A003731.P4041646697888593147

`A359855(A141214(n+1))`
-/

namespace A003731.P4041646697888593147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (A141214 (n + 1)).toNat

end

end A003731.P4041646697888593147

namespace A003731

/-- `A359855(A141214(n+1))` -/
def P4041646697888593147.Spec : Prop :=
  ∀ n, P4041646697888593147.a n = A003731 (n + 1)

end A003731

/-! ## A003731.P11128233685791289384

`A359855(eq[3, A193592(n)])`
-/

namespace A003731.P11128233685791289384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003731.P11128233685791289384

namespace A003731

/-- `A359855(eq[3, A193592(n)])` -/
def P11128233685791289384.Spec : Prop :=
  ∀ n, P11128233685791289384.a n = A003731 (n + 1)

end A003731

/-!
# A003733: Number of spanning trees in C_5 X P_n.

The programs for A003733, the canonical program `A003733.P4419014243298460425` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003733 has offset 1).

The definition of A003733 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003733.P4419014243298460425

`5*A143699(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003733

/-- `5*A143699(n+1)²` -/
def P4419014243298460425.Spec : Prop :=
  ∀ n, P4419014243298460425.a n = A003733 (n + 1)

theorem P4419014243298460425.correct : P4419014243298460425.Spec := by
  intro n
  simp only [A003733, Nat.add_sub_cancel]

end A003733

/-! ## A003733.P4425315082220499946

`A173958(eq[4, A193592(n)])`
-/

namespace A003733.P4425315082220499946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003733.P4425315082220499946

namespace A003733

/-- `A173958(eq[4, A193592(n)])` -/
def P4425315082220499946.Spec : Prop :=
  ∀ n, P4425315082220499946.a n = A003733 (n + 1)

end A003733

/-! ## A003733.P2492340749360678927

`A173958(Δ[A023545(n+1)])`
-/

namespace A003733.P2492340749360678927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (f1 (n + 1) - f1 n).toNat

end

end A003733.P2492340749360678927

namespace A003733

/-- `A173958(Δ[A023545(n+1)])` -/
def P2492340749360678927.Spec : Prop :=
  ∀ n, P2492340749360678927.a n = A003733 (n + 1)

end A003733

/-! ## A003733.P5124338778213780384

`A173958(A000217(n+5)-4)`
-/

namespace A003733.P5124338778213780384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (A000217 (n + 5) - 4).toNat

end

end A003733.P5124338778213780384

namespace A003733

/-- `A173958(A000217(n+5)-4)` -/
def P5124338778213780384.Spec : Prop :=
  ∀ n, P5124338778213780384.a n = A003733 (n + 1)

end A003733

/-! ## A003733.P4363599671583492790

`A173958(eq[6, A185782(n+1)])`
-/

namespace A003733.P4363599671583492790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173958 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A003733.P4363599671583492790

namespace A003733

/-- `A173958(eq[6, A185782(n+1)])` -/
def P4363599671583492790.Spec : Prop :=
  ∀ n, P4363599671583492790.a n = A003733 (n + 1)

end A003733

/-!
# A003739: Number of spanning trees in W_5 X P_n.

The programs for A003739, there is no canonical definition to state claims against.
-/

/-! ## A003739.P5349705517779754657

`A003745(n+1)/A003751(n+1)*A003745(n+1)`
-/

namespace A003739.P5349705517779754657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003745 (n + 1) : ℚ) / (A003751 (n + 1) : ℚ) * (A003745 (n + 1) : ℚ)

end

end A003739.P5349705517779754657

/-!
# A003745: Number of spanning trees in (K_5 - e) X P_n.

The programs for A003745, there is no canonical definition to state claims against.
-/

/-! ## A003745.P16112981877769534160

`sqrt(A003739(n+1))*sqrt(A003751(n+1))`
-/

namespace A003745.P16112981877769534160
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A003739 (n + 1) : ℝ) * Real.sqrt (A003751 (n + 1) : ℝ)

end

end A003745.P16112981877769534160

/-!
# A003751: Number of spanning trees in K_5 x P_n.

The programs for A003751, the canonical program `A003751.P9935531520569567770` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003751 has offset 1).

The definition of A003751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003751.P9935531520569567770

`125*A049682(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003751

/-- `125*A049682(n+1)²` -/
def P9935531520569567770.Spec : Prop :=
  ∀ n, P9935531520569567770.a n = A003751 (n + 1)

theorem P9935531520569567770.correct : P9935531520569567770.Spec := by
  intro n
  simp only [A003751, Nat.add_sub_cancel]

end A003751

/-! ## A003751.P4053046653194483763

`A003745(n+1)/A003739(n+1)*A003745(n+1)`
-/

namespace A003751.P4053046653194483763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003745 (n + 1) : ℚ) / (A003739 (n + 1) : ℚ) * (A003745 (n + 1) : ℚ)

end

end A003751.P4053046653194483763

namespace A003751

/-- `A003745(n+1)/A003739(n+1)*A003745(n+1)` -/
def P4053046653194483763.Spec : Prop :=
  ∀ n, P4053046653194483763.a n = (A003751 (n + 1) : ℚ)

end A003751

/-!
# A003752: Number of Hamiltonian paths in C_4 X P_n.

The programs for A003752, there is no canonical definition to state claims against.
-/

/-! ## A003752.P11446594989313742208

`A173675(A110286(n))`
-/

namespace A003752.P11446594989313742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A110286 n).toNat

end

end A003752.P11446594989313742208

/-! ## A003752.P15559141604680756287

`A173675(Δ[A196305(n)])`
-/

namespace A003752.P15559141604680756287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (f1 (n + 1) - f1 n).toNat

end

end A003752.P15559141604680756287

/-! ## A003752.P3922219865828561850

`A173675(A115811(n+1))`
-/

namespace A003752.P3922219865828561850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A115811 (n + 1)).toNat

end

end A003752.P3922219865828561850

/-! ## A003752.P10170997586200973257

`A173675(A196305(n)+1)`
-/

namespace A003752.P10170997586200973257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173675 (A196305 n + 1).toNat

end

end A003752.P10170997586200973257

/-!
# A003753: Number of spanning trees in C_4 X P_n.

The programs for A003753, the canonical program `A003753.P3837901775224364165` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003753 has offset 1).

The definition of A003753 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003753.P3837901775224364165

`4*A001109(n+1)*A098301(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003753

/-- `4*A001109(n+1)*A098301(n+1)` -/
def P3837901775224364165.Spec : Prop :=
  ∀ n, P3837901775224364165.a n = A003753 (n + 1)

theorem P3837901775224364165.correct : P3837901775224364165.Spec := by
  intro n
  simp only [A003753, Nat.add_sub_cancel]

end A003753

/-! ## A003753.P7209310187725304714

`A001353(n+1)²*A005319(n+1)`
-/

namespace A003753.P7209310187725304714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) ^ 2 * A005319 (n + 1)

end

end A003753.P7209310187725304714

namespace A003753

/-- `A001353(n+1)²*A005319(n+1)` -/
def P7209310187725304714.Spec : Prop :=
  ∀ n, P7209310187725304714.a n = A003753 (n + 1)

end A003753

/-! ## A003753.P1892709275547181801

`A052530(n+1)²*A001109(n+1)`
-/

namespace A003753.P1892709275547181801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 (n + 1) ^ 2 * A001109 (n + 1)

end

end A003753.P1892709275547181801

namespace A003753

/-- `A052530(n+1)²*A001109(n+1)` -/
def P1892709275547181801.Spec : Prop :=
  ∀ n, P1892709275547181801.a n = A003753 (n + 1)

end A003753

/-! ## A003753.P17954518438995758479

`∑[A028230(n+1)]*Δ[A001653(n+1)]`
-/

namespace A003753.P17954518438995758479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A003753.P17954518438995758479

namespace A003753

/-- `∑[A028230(n+1)]*Δ[A001653(n+1)]` -/
def P17954518438995758479.Spec : Prop :=
  ∀ n, P17954518438995758479.a n = A003753 (n + 1)

end A003753

/-! ## A003753.P3294927285715913348

`A001109(n+1)*A001353(n+1)*A231896(n+1)`
-/

namespace A003753.P3294927285715913348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A001353 (n + 1) * A231896 (n + 1)

end

end A003753.P3294927285715913348

namespace A003753

/-- `A001109(n+1)*A001353(n+1)*A231896(n+1)` -/
def P3294927285715913348.Spec : Prop :=
  ∀ n, P3294927285715913348.a n = A003753 (n + 1)

end A003753

/-!
# A003754: Numbers with no adjacent 0's in binary expansion.

The programs for A003754, the canonical program `A003754.P7281650019262553655` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003754 has offset 1).

The definition of A003754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003754.P14296511445376724509

`A052499(n)-1`
-/

namespace A003754.P14296511445376724509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n - 1

end

end A003754.P14296511445376724509

namespace A003754

/-- `A052499(n)-1` -/
def P14296511445376724509.Spec : Prop :=
  ∀ n, P14296511445376724509.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P8530958057535360676

`floor(A247648(n+1)/2)`
-/

namespace A003754.P8530958057535360676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A247648 (n + 1) : ℚ) / 2⌋

end

end A003754.P8530958057535360676

namespace A003754

/-- `floor(A247648(n+1)/2)` -/
def P8530958057535360676.Spec : Prop :=
  ∀ n, P8530958057535360676.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P350624388880962587

`(A380358(n+1)-3)/4`
-/

namespace A003754.P350624388880962587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380358 (n + 1) - 3 : ℚ) / 4

end

end A003754.P350624388880962587

namespace A003754

/-- `(A380358(n+1)-3)/4` -/
def P350624388880962587.Spec : Prop :=
  ∀ n, P350624388880962587.a n = (A003754 (n + 1) : ℚ)

end A003754

/-! ## A003754.P5277796648233814363

`A247648(n+1)%A052499(n)`
-/

namespace A003754.P5277796648233814363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247648 (n + 1)) (A052499 n)

end

end A003754.P5277796648233814363

namespace A003754

/-- `A247648(n+1)%A052499(n)` -/
def P5277796648233814363.Spec : Prop :=
  ∀ n, P5277796648233814363.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P1883362830006541335

`A365809(n+1)%A052499(n)`
-/

namespace A003754.P1883362830006541335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365809 (n + 1)) (A052499 n)

end

end A003754.P1883362830006541335

namespace A003754

/-- `A365809(n+1)%A052499(n)` -/
def P1883362830006541335.Spec : Prop :=
  ∀ n, P1883362830006541335.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P14603692110064523154

`A380358(n+1)%A052499(n)`
-/

namespace A003754.P14603692110064523154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380358 (n + 1)) (A052499 n)

end

end A003754.P14603692110064523154

namespace A003754

/-- `A380358(n+1)%A052499(n)` -/
def P14603692110064523154.Spec : Prop :=
  ∀ n, P14603692110064523154.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P8856643901091785494

`∪[A000975(n), A153033(n+1)]`
-/

namespace A003754.P8856643901091785494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003754.P8856643901091785494

namespace A003754

/-- `∪[A000975(n), A153033(n+1)]` -/
def P8856643901091785494.Spec : Prop :=
  ∀ n, (P8856643901091785494.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P1774379411611997330

`∪[A048329(n), A153033(n+1)]`
-/

namespace A003754.P1774379411611997330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003754.P1774379411611997330

namespace A003754

/-- `∪[A048329(n), A153033(n+1)]` -/
def P1774379411611997330.Spec : Prop :=
  ∀ n, (P1774379411611997330.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P8227906970104641180

`∪[A138587(n), A153033(n+1)]`
-/

namespace A003754.P8227906970104641180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003754.P8227906970104641180

namespace A003754

/-- `∪[A138587(n), A153033(n+1)]` -/
def P8227906970104641180.Spec : Prop :=
  ∀ n, (P8227906970104641180.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P6622776857274417338

`∪[A023746(n+1), A153033(n+1)]`
-/

namespace A003754.P6622776857274417338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A003754.P6622776857274417338

namespace A003754

/-- `∪[A023746(n+1), A153033(n+1)]` -/
def P6622776857274417338.Spec : Prop :=
  ∀ n, (P6622776857274417338.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P7281650019262553655

`(A365808(n+2)+1)/3-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A003754

/-- `(A365808(n+2)+1)/3-1` -/
def P7281650019262553655.Spec : Prop :=
  ∀ n, P7281650019262553655.a n = (A003754 (n + 1) : ℚ)

end A003754

/-! ## A003754.P4454631642387256951

`A247648(n+1)+A247648(n+1)-A365808(n+2)`
-/

namespace A003754.P4454631642387256951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247648 (n + 1) + (A247648 (n + 1) - A365808 (n + 2))

end

end A003754.P4454631642387256951

namespace A003754

/-- `A247648(n+1)+A247648(n+1)-A365808(n+2)` -/
def P4454631642387256951.Spec : Prop :=
  ∀ n, P4454631642387256951.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P13061066065054817347

`A380358(n+1)+A365808(n+2)-A365809(n+1)`
-/

namespace A003754.P13061066065054817347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380358 (n + 1) + (A365808 (n + 2) - A365809 (n + 1))

end

end A003754.P13061066065054817347

namespace A003754

/-- `A380358(n+1)+A365808(n+2)-A365809(n+1)` -/
def P13061066065054817347.Spec : Prop :=
  ∀ n, P13061066065054817347.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P15055375539008085089

`A132971(A267584(n))+A052499(n)`
-/

namespace A003754.P15055375539008085089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A267584 n).toNat + A052499 n

end

end A003754.P15055375539008085089

namespace A003754

/-- `A132971(A267584(n))+A052499(n)` -/
def P15055375539008085089.Spec : Prop :=
  ∀ n, P15055375539008085089.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P10975642012029297259

`A132971(A102457(2*n+5))+A052499(n)`
-/

namespace A003754.P10975642012029297259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A102457 (2 * n + 5)).toNat + A052499 n

end

end A003754.P10975642012029297259

namespace A003754

/-- `A132971(A102457(2*n+5))+A052499(n)` -/
def P10975642012029297259.Spec : Prop :=
  ∀ n, P10975642012029297259.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P7533764548766990044

`A293575(A038712(2*n+3))+A052499(n)`
-/

namespace A003754.P7533764548766990044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293575 (A038712 (2 * n + 3)).toNat + A052499 n

end

end A003754.P7533764548766990044

namespace A003754

/-- `A293575(A038712(2*n+3))+A052499(n)` -/
def P7533764548766990044.Spec : Prop :=
  ∀ n, P7533764548766990044.a n = A003754 (n + 1)

end A003754

/-! ## A003754.P2631364544387900662

`lt[and(n, or(n, 2*n)+2), 2]`
-/

namespace A003754.P2631364544387900662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (2 * n) + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A003754.P2631364544387900662

namespace A003754

/-- `lt[and(n, or(n, 2*n)+2), 2]` -/
def P2631364544387900662.Spec : Prop :=
  ∀ n, (P2631364544387900662.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P13174290458071522316

`eq[and(n, 2*n+1), and(n, 3*n+2)]`
-/

namespace A003754.P13174290458071522316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003754.P13174290458071522316

namespace A003754

/-- `eq[and(n, 2*n+1), and(n, 3*n+2)]` -/
def P13174290458071522316.Spec : Prop :=
  ∀ n, (P13174290458071522316.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P17238127851837730864

`lt[A334076(n), 2]`
-/

namespace A003754.P17238127851837730864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003754.P17238127851837730864

namespace A003754

/-- `lt[A334076(n), 2]` -/
def P17238127851837730864.Spec : Prop :=
  ∀ n, (P17238127851837730864.a n : ℤ) = A003754 (n + 1)

end A003754

/-! ## A003754.P14783420757594821197

`∩[A004745(n+1), A367625(n+2)]`
-/

namespace A003754.P14783420757594821197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367625 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A003754.P14783420757594821197

namespace A003754

/-- `∩[A004745(n+1), A367625(n+2)]` -/
def P14783420757594821197.Spec : Prop :=
  ∀ n, (P14783420757594821197.a n : ℤ) = A003754 (n + 1)

end A003754

/-!
# A003755: Number of spanning trees in S_4 X P_n.

The programs for A003755, the canonical program `A003755.P15968671754711060225` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003755 has offset 1).

The definition of A003755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003755.P15968671754711060225

`A001109(n+1)*A049684(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003755

/-- `A001109(n+1)*A049684(n+1)` -/
def P15968671754711060225.Spec : Prop :=
  ∀ n, P15968671754711060225.a n = A003755 (n + 1)

theorem P15968671754711060225.correct : P15968671754711060225.Spec := by
  intro n
  simp only [A003755, Nat.add_sub_cancel]

end A003755

/-! ## A003755.P15212035430453500272

`A028477(2*n+1)/2`
-/

namespace A003755.P15212035430453500272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028477 (2 * n + 1) : ℚ) / 2

end

end A003755.P15212035430453500272

namespace A003755

/-- `A028477(2*n+1)/2` -/
def P15212035430453500272.Spec : Prop :=
  ∀ n, P15212035430453500272.a n = (A003755 (n + 1) : ℚ)

end A003755

/-! ## A003755.P2755005376152652343

`A001906(n+1)²*A001109(n+1)`
-/

namespace A003755.P2755005376152652343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) ^ 2 * A001109 (n + 1)

end

end A003755.P2755005376152652343

namespace A003755

/-- `A001906(n+1)²*A001109(n+1)` -/
def P2755005376152652343.Spec : Prop :=
  ∀ n, P2755005376152652343.a n = A003755 (n + 1)

end A003755

/-! ## A003755.P4773582112353527115

`A001109(n+1)*A001254(n+1)*A007598(n+1)`
-/

namespace A003755.P4773582112353527115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) * A001254 (n + 1) * A007598 (n + 1)

end

end A003755.P4773582112353527115

namespace A003755

/-- `A001109(n+1)*A001254(n+1)*A007598(n+1)` -/
def P4773582112353527115.Spec : Prop :=
  ∀ n, P4773582112353527115.a n = A003755 (n + 1)

end A003755

/-! ## A003755.P1826931343640124496

`A158880(n+1)/(2*A003690(n+1))`
-/

namespace A003755.P1826931343640124496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158880 (n + 1) : ℚ) / (2 * A003690 (n + 1) : ℚ)

end

end A003755.P1826931343640124496

namespace A003755

/-- `A158880(n+1)/(2*A003690(n+1))` -/
def P1826931343640124496.Spec : Prop :=
  ∀ n, P1826931343640124496.a n = (A003755 (n + 1) : ℚ)

end A003755

/-!
# A003756: Number of spanning trees with degrees 1 and 3 in S_4 X P_{2n-1}.

The programs for A003756, the canonical program `A003756.P16593747742739327054` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003756 has offset 1).

The definition of A003756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003756.P16593747742739327054

`2*a(n-1)+16*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=24, a(3)=54`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003756

/-- `2*a(n-1)+16*a(n-2)+4*a(n-3)` -/
def P16593747742739327054.Spec : Prop :=
  ∀ n, (P16593747742739327054.a n : ℤ) = A003756 (n + 1)

theorem P16593747742739327054.correct : P16593747742739327054.Spec := by
  intro n
  simp only [A003756, Nat.add_sub_cancel]

end A003756

/-!
# A003757: Number of perfect matchings (or domino tilings) in D_4 X P_(n-1).

The programs for A003757, the canonical program `A003757.P17535095117924034578` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003757 has offset 0).

The definition of A003757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003757.P17535095117924034578

`a(n-1)+6*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003757

/-- `a(n-1)+6*a(n-2)+a(n-3)-a(n-4)` -/
def P17535095117924034578.Spec : Prop :=
  ∀ n, P17535095117924034578.a n = A003757 n

theorem P17535095117924034578.correct : P17535095117924034578.Spec := by
  intro n
  simp only [A003757]

end A003757

/-! ## A003757.P7832655494168941583

`A266003(A027302(n+1))+A186031(n+1)`
-/

namespace A003757.P7832655494168941583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266003 (A027302 (n + 1)).toNat + A186031 (n + 1)

end

end A003757.P7832655494168941583

namespace A003757

/-- `A266003(A027302(n+1))+A186031(n+1)` -/
def P7832655494168941583.Spec : Prop :=
  ∀ n, P7832655494168941583.a n = A003757 n

end A003757

/-! ## A003757.P11036774014676708124

`A001462(A151374(n))-A354734(n)`
-/

namespace A003757.P11036774014676708124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A151374 n).toNat - A354734 n

end

end A003757.P11036774014676708124

namespace A003757

/-- `A001462(A151374(n))-A354734(n)` -/
def P11036774014676708124.Spec : Prop :=
  ∀ n, P11036774014676708124.a n = A003757 n

end A003757

/-!
# A003758: Number of 2-factors in D_4 X P_n.

The programs for A003758, the canonical program `A003758.P12553909493936070315` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003758 has offset 1).

The definition of A003758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003758.P12553909493936070315

`3*a(n-1)+9*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=7, a(3)=46, a(4)=193`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003758

/-- `3*a(n-1)+9*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P12553909493936070315.Spec : Prop :=
  ∀ n, P12553909493936070315.a n = A003758 (n + 1)

theorem P12553909493936070315.correct : P12553909493936070315.Spec := by
  intro n
  simp only [A003758, Nat.add_sub_cancel]

end A003758

/-! ## A003758.P15277818091611821405

`xor(A125977(A001246(n)), A214981(n+1))`
-/

namespace A003758.P15277818091611821405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A125977 (A001246 n).toNat) (A214981 (n + 1))

end

end A003758.P15277818091611821405

namespace A003758

/-- `xor(A125977(A001246(n)), A214981(n+1))` -/
def P15277818091611821405.Spec : Prop :=
  ∀ n, P15277818091611821405.a n = A003758 (n + 1)

end A003758

/-!
# A003759: Number of Hamiltonian cycles in D_4 X P_n.

The programs for A003759, the canonical program `A003759.P3403202008220619426` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003759 has offset 1).

The definition of A003759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003759.P3403202008220619426

`3*a(n-1)+3*a(n-2)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003759

/-- `3*a(n-1)+3*a(n-2)-2*a(n-3)+a(n-4)` -/
def P3403202008220619426.Spec : Prop :=
  ∀ n, P3403202008220619426.a n = A003759 (n + 1)

theorem P3403202008220619426.correct : P3403202008220619426.Spec := by
  intro n
  simp only [A003759, Nat.add_sub_cancel]

end A003759

/-! ## A003759.P6042155474575866878

`ogf(2x/(1-3x-3x^2+2x^3-x^4))`
-/

namespace A003759.P6042155474575866878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -3, -3, 2, -1] n

end

end A003759.P6042155474575866878

namespace A003759

/-- `ogf(2x/(1-3x-3x^2+2x^3-x^4))` -/
def P6042155474575866878.Spec : Prop :=
  ∀ n, P6042155474575866878.a n = A003759 (n + 1)

end A003759

/-! ## A003759.P941443731136670119

`A296215(n)-A000035(A200731(n))`
-/

namespace A003759.P941443731136670119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296215 n - A000035 (A200731 n).toNat

end

end A003759.P941443731136670119

namespace A003759

/-- `A296215(n)-A000035(A200731(n))` -/
def P941443731136670119.Spec : Prop :=
  ∀ n, P941443731136670119.a n = A003759 (n + 1)

end A003759

/-!
# A003761: Number of spanning trees in D_4 X P_n.

The programs for A003761, the canonical program `A003761.P174387184741111402` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003761 has offset 1).

The definition of A003761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003761.P174387184741111402

`3*A006238(n+1)*A001109(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A003761

/-- `3*A006238(n+1)*A001109(n+1)` -/
def P174387184741111402.Spec : Prop :=
  ∀ n, P174387184741111402.a n = A003761 (n + 1)

theorem P174387184741111402.correct : P174387184741111402.Spec := by
  intro n
  simp only [A003761, Nat.add_sub_cancel]

end A003761

/-! ## A003761.P108286589733892313

`A158880(n+1)/(2*A006238(n+1))`
-/

namespace A003761.P108286589733892313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158880 (n + 1) : ℚ) / (2 * A006238 (n + 1) : ℚ)

end

end A003761.P108286589733892313

namespace A003761

/-- `A158880(n+1)/(2*A006238(n+1))` -/
def P108286589733892313.Spec : Prop :=
  ∀ n, P108286589733892313.a n = (A003761 (n + 1) : ℚ)

theorem P108286589733892313.correct : P108286589733892313.Spec := by
  intro n
  simp only [A003761, Nat.add_sub_cancel, A003761.P108286589733892313.a, A003761.P174387184741111402.a, A001109, A001109.P14455961844001046772.a, A006238, A006238.P18425104944193782718.a, A158880, A158880.P13135155835513871061.a, A001906, A001906.P15149022156944616941.a, A004254, A004254.P3368397127393006179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003761

/-!
# A003762: Number of spanning trees with degrees 1 and 3 in D_4 X P_n.

The programs for A003762, there is no canonical definition to state claims against.
-/

/-! ## A003762.P17752329383836432251

`A051953(A316363(n+1)*A340603(n+1))`
-/

namespace A003762.P17752329383836432251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A316363 (n + 1) * A340603 (n + 1)).toNat

end

end A003762.P17752329383836432251

/-!
# A003763: Number of (undirected) Hamiltonian cycles on a 2n X 2n square grid of points.

The programs for A003763, there is no canonical definition to state claims against.
-/

/-! ## A003763.P17604098675765065718

`A222065(n+1)/2`
-/

namespace A003763.P17604098675765065718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222065 (n + 1) : ℚ) / 2

end

end A003763.P17604098675765065718

/-! ## A003763.P17856558352714430614

`record[A143246(n+2)/2]`
-/

namespace A003763.P17856558352714430614
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143246 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003763.P17856558352714430614

/-! ## A003763.P12332153075441185256

`A143246(2*(n+1))/2`
-/

namespace A003763.P12332153075441185256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143246 (2 * (n + 1)) : ℚ) / 2

end

end A003763.P12332153075441185256

/-! ## A003763.P1364781261600040140

`A222201(3*n)`
-/

namespace A003763.P1364781261600040140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222201 (3 * n)

end

end A003763.P1364781261600040140

/-!
# A003765: Number of Hamiltonian cycles in W_4 X P_n.

The programs for A003765, there is no canonical definition to state claims against.
-/

/-! ## A003765.P7878145414222776412

`A158416(A000761(n+2)+6)`
-/

namespace A003765.P7878145414222776412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A000761 (n + 2) + 6).toNat

end

end A003765.P7878145414222776412

/-!
# A003767: Number of spanning trees in (K_4 - e) X P_n.

The programs for A003767, the canonical program `A003767.P4752969417628511591` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003767 has offset 1).

The definition of A003767 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003767.P4752969417628511591

`8*A001353(n+1)*A001110(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003767

/-- `8*A001353(n+1)*A001110(n+1)` -/
def P4752969417628511591.Spec : Prop :=
  ∀ n, P4752969417628511591.a n = A003767 (n + 1)

theorem P4752969417628511591.correct : P4752969417628511591.Spec := by
  intro n
  simp only [A003767, Nat.add_sub_cancel]

end A003767

/-! ## A003767.P4070029567165334312

`A001109(n+1)²*A234272(n+1)`
-/

namespace A003767.P4070029567165334312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 (n + 1) ^ 2 * A234272 (n + 1)

end

end A003767.P4070029567165334312

namespace A003767

/-- `A001109(n+1)²*A234272(n+1)` -/
def P4070029567165334312.Spec : Prop :=
  ∀ n, P4070029567165334312.a n = A003767 (n + 1)

end A003767

/-! ## A003767.P10048551511160677822

`A001108(2*(n+1))*A001353(n+1)`
-/

namespace A003767.P10048551511160677822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (2 * (n + 1)) * A001353 (n + 1)

end

end A003767.P10048551511160677822

namespace A003767

/-- `A001108(2*(n+1))*A001353(n+1)` -/
def P10048551511160677822.Spec : Prop :=
  ∀ n, P10048551511160677822.a n = A003767 (n + 1)

end A003767

/-! ## A003767.P17827512257864182926

`A077985(2*n+1)²*A052530(n+1)`
-/

namespace A003767.P17827512257864182926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 (2 * n + 1) ^ 2 * A052530 (n + 1)

end

end A003767.P17827512257864182926

namespace A003767

/-- `A077985(2*n+1)²*A052530(n+1)` -/
def P17827512257864182926.Spec : Prop :=
  ∀ n, P17827512257864182926.a n = A003767 (n + 1)

end A003767

/-! ## A003767.P12036150576345990882

`A000129(2*(n+1))²*Δ[A079935(n+1)]`
-/

namespace A003767.P12036150576345990882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * (n + 1)) ^ 2 * (f1 (n + 1) - f1 n)

end

end A003767.P12036150576345990882

namespace A003767

/-- `A000129(2*(n+1))²*Δ[A079935(n+1)]` -/
def P12036150576345990882.Spec : Prop :=
  ∀ n, P12036150576345990882.a n = A003767 (n + 1)

end A003767

/-!
# A003769: Number of perfect matchings (or domino tilings) in K_4 X P_n.

The programs for A003769, the canonical program `A003769.P10584258097594951045` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003769 has offset 1).

The definition of A003769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003769.P10584258097594951045

`4*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=3, a(1)=16, a(2)=75`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003769

/-- `4*a(n-1)+4*a(n-2)-a(n-3)` -/
def P10584258097594951045.Spec : Prop :=
  ∀ n, P10584258097594951045.a n = A003769 (n + 1)

theorem P10584258097594951045.correct : P10584258097594951045.Spec := by
  intro n
  simp only [A003769, Nat.add_sub_cancel]

end A003769

/-! ## A003769.P835361930076753792

`1/7*(6*A030221(n+1)-A054477(n+1)+2*(-1)^(n+1))`
-/

namespace A003769.P835361930076753792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 7 * (6 * A030221 (n + 1) - A054477 (n + 1) + 2 * (-1) ^ (n + 1) : ℚ)

end

end A003769.P835361930076753792

namespace A003769

/-- `1/7*(6*A030221(n+1)-A054477(n+1)+2*(-1)^(n+1))` -/
def P835361930076753792.Spec : Prop :=
  ∀ n, P835361930076753792.a n = (A003769 (n + 1) : ℚ)

end A003769

/-! ## A003769.P2174940336214836529

`Δ[ogf(1/(1-4x-4x^2+x^3))]`
-/

namespace A003769.P2174940336214836529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, -4, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003769.P2174940336214836529

namespace A003769

/-- `Δ[ogf(1/(1-4x-4x^2+x^3))]` -/
def P2174940336214836529.Spec : Prop :=
  ∀ n, P2174940336214836529.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P16975873729396488276

`ogf((3+4x-x^2)/(1-4x-4x^2+x^3))`
-/

namespace A003769.P16975873729396488276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -1] [1, -4, -4, 1] n

end

end A003769.P16975873729396488276

namespace A003769

/-- `ogf((3+4x-x^2)/(1-4x-4x^2+x^3))` -/
def P16975873729396488276.Spec : Prop :=
  ∀ n, P16975873729396488276.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P10491952591648965405

`Δ[A099025(n)]`
-/

namespace A003769.P10491952591648965405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003769.P10491952591648965405

namespace A003769

/-- `Δ[A099025(n)]` -/
def P10491952591648965405.Spec : Prop :=
  ∀ n, P10491952591648965405.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P11853411254252345442

`A005386(n+2)`
-/

namespace A003769.P11853411254252345442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005386 (n + 2)

end

end A003769.P11853411254252345442

namespace A003769

/-- `A005386(n+2)` -/
def P11853411254252345442.Spec : Prop :=
  ∀ n, P11853411254252345442.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P13864166751571161007

`A099025(n+1)-A099025(n)`
-/

namespace A003769.P13864166751571161007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099025 (n + 1) - A099025 n

end

end A003769.P13864166751571161007

namespace A003769

/-- `A099025(n+1)-A099025(n)` -/
def P13864166751571161007.Spec : Prop :=
  ∀ n, P13864166751571161007.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P5921140093007477499

`A136210(n+2)*A136211(n+1)`
-/

namespace A003769.P5921140093007477499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136210 (n + 2) * A136211 (n + 1)

end

end A003769.P5921140093007477499

namespace A003769

/-- `A136210(n+2)*A136211(n+1)` -/
def P5921140093007477499.Spec : Prop :=
  ∀ n, P5921140093007477499.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P17435560650858480396

`A136211(n+1)²*A010684(n+1)`
-/

namespace A003769.P17435560650858480396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (n + 1) ^ 2 * A010684 (n + 1)

end

end A003769.P17435560650858480396

namespace A003769

/-- `A136211(n+1)²*A010684(n+1)` -/
def P17435560650858480396.Spec : Prop :=
  ∀ n, P17435560650858480396.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P285156939246508456

`Δ[A136211(n+1)*A136211(A028310(n))]`
-/

namespace A003769.P285156939246508456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (n + 1) * A136211 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003769.P285156939246508456

namespace A003769

/-- `Δ[A136211(n+1)*A136211(A028310(n))]` -/
def P285156939246508456.Spec : Prop :=
  ∀ n, P285156939246508456.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P18100135824317098235

`A136210(n+2)/A010684(n+1)*A136210(n+2)`
-/

namespace A003769.P18100135824317098235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 2) : ℚ) / (A010684 (n + 1) : ℚ) * (A136210 (n + 2) : ℚ)

end

end A003769.P18100135824317098235

namespace A003769

/-- `A136210(n+2)/A010684(n+1)*A136210(n+2)` -/
def P18100135824317098235.Spec : Prop :=
  ∀ n, P18100135824317098235.a n = (A003769 (n + 1) : ℚ)

end A003769

/-! ## A003769.P8000477528657629443

`Δ[∑[5*a(n-1)-a(n-2)]-a(n-1)]` with `a(0)=1, a(1)=4`
-/

namespace A003769.P8000477528657629443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  5 * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003769.P8000477528657629443

namespace A003769

/-- `Δ[∑[5*a(n-1)-a(n-2)]-a(n-1)]` -/
def P8000477528657629443.Spec : Prop :=
  ∀ n, P8000477528657629443.a n = A003769 (n + 1)

end A003769

/-! ## A003769.P14038483179966139774

`A136210(n+2)²/A010684(n+1)`
-/

namespace A003769.P14038483179966139774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136210 (n + 2) ^ 2 : ℚ) / (A010684 (n + 1) : ℚ)

end

end A003769.P14038483179966139774

namespace A003769

/-- `A136210(n+2)²/A010684(n+1)` -/
def P14038483179966139774.Spec : Prop :=
  ∀ n, P14038483179966139774.a n = (A003769 (n + 1) : ℚ)

end A003769

/-!
# A003770: Number of 2-factors in K_4 X P_n.

The programs for A003770, the canonical program `A003770.P8191203884457100880` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003770 has offset 1).

The definition of A003770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003770.P8191203884457100880

`11*a(n-1)+8*a(n-2)-12*a(n-3)` with `a(0)=3, a(1)=42, a(2)=474`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003770

/-- `11*a(n-1)+8*a(n-2)-12*a(n-3)` -/
def P8191203884457100880.Spec : Prop :=
  ∀ n, P8191203884457100880.a n = A003770 (n + 1)

theorem P8191203884457100880.correct : P8191203884457100880.Spec := by
  intro n
  simp only [A003770, Nat.add_sub_cancel]

end A003770

/-!
# A003771: Number of Hamiltonian cycles in K_4 X P_n.

The programs for A003771, the canonical program `A003771.P12926143704017130782` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003771 has offset 1).

The definition of A003771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003771.P12926143704017130782

`7*a(n-1)-2*a(n-2)` with `a(0)=3, a(1)=30, a(2)=198`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003771

/-- `7*a(n-1)-2*a(n-2)` -/
def P12926143704017130782.Spec : Prop :=
  ∀ n, P12926143704017130782.a n = A003771 (n + 1)

theorem P12926143704017130782.correct : P12926143704017130782.Spec := by
  intro n
  simp only [A003771, Nat.add_sub_cancel]

end A003771

/-! ## A003771.P206054034356460469

`ogf((3+9x-6x^2)/(1-7x+2x^2))`
-/

namespace A003771.P206054034356460469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, -6] [1, -7, 2] n

end

end A003771.P206054034356460469

namespace A003771

/-- `ogf((3+9x-6x^2)/(1-7x+2x^2))` -/
def P206054034356460469.Spec : Prop :=
  ∀ n, P206054034356460469.a n = A003771 (n + 1)

end A003771

/-!
# A003773: Number of spanning trees in K_4 X P_n.

The programs for A003773, the canonical program `A003773.P106308813800989571` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003773 has offset 1).

The definition of A003773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003773.P106308813800989571

`16*A001109(n+1)^3`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003773

/-- `16*A001109(n+1)^3` -/
def P106308813800989571.Spec : Prop :=
  ∀ n, P106308813800989571.a n = A003773 (n + 1)

theorem P106308813800989571.correct : P106308813800989571.Spec := by
  intro n
  simp only [A003773, Nat.add_sub_cancel]

end A003773

/-! ## A003773.P16114470414264147072

`16*A001109(n+1)*A001110(n+1)`
-/

namespace A003773.P16114470414264147072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A001109 (n + 1) * A001110 (n + 1)

end

end A003773.P16114470414264147072

namespace A003773

/-- `16*A001109(n+1)*A001110(n+1)` -/
def P16114470414264147072.Spec : Prop :=
  ∀ n, P16114470414264147072.a n = A003773 (n + 1)

end A003773

/-! ## A003773.P2681029306205728052

`35*A097731(n)/2-3*A001109(n+1)/2`
-/

namespace A003773.P2681029306205728052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (35 * A097731 n : ℚ) / 2 - (3 * A001109 (n + 1) : ℚ) / 2

end

end A003773.P2681029306205728052

namespace A003773

/-- `35*A097731(n)/2-3*A001109(n+1)/2` -/
def P2681029306205728052.Spec : Prop :=
  ∀ n, P2681029306205728052.a n = (A003773 (n + 1) : ℚ)

end A003773

/-! ## A003773.P699750998652381228

`2*A110272(2*(n+1))`
-/

namespace A003773.P699750998652381228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110272 (2 * (n + 1))

end

end A003773.P699750998652381228

namespace A003773

/-- `2*A110272(2*(n+1))` -/
def P699750998652381228.Spec : Prop :=
  ∀ n, P699750998652381228.a n = A003773 (n + 1)

end A003773

/-! ## A003773.P16913617122619875094

`2*A001542(n+1)^3`
-/

namespace A003773.P16913617122619875094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001542 (n + 1) ^ 3

end

end A003773.P16913617122619875094

namespace A003773

/-- `2*A001542(n+1)^3` -/
def P16913617122619875094.Spec : Prop :=
  ∀ n, P16913617122619875094.a n = A003773 (n + 1)

end A003773

/-!
# A003775: Number of perfect matchings (or domino tilings) in P_5 X P_2n.

The programs for A003775, there is no canonical definition to state claims against.
-/

/-! ## A003775.P26243361918997086

`A189003(2*n)`
-/

namespace A003775.P26243361918997086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (2 * n)

end

end A003775.P26243361918997086

/-! ## A003775.P15034595042514264548

`record[A189003(n)/(-1)^n]`
-/

namespace A003775.P15034595042514264548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189003 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P15034595042514264548

/-! ## A003775.P18207781656185873974

`record[A189003(A014681(n))]`
-/

namespace A003775.P18207781656185873974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P18207781656185873974

/-! ## A003775.P9295210327580711237

`record[A189003(log2(A224783(n)))]`
-/

namespace A003775.P9295210327580711237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (SequenceMachineLib.roundAway (Real.logb 2 (A224783 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P9295210327580711237

/-! ## A003775.P12635225967169836492

`record[A189003(A026741(n)+1)]`
-/

namespace A003775.P12635225967169836492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P12635225967169836492

/-! ## A003775.P7034432122242270526

`Δ[A004254(n)]*A122367(n)`
-/

namespace A003775.P7034432122242270526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A122367 n

end

end A003775.P7034432122242270526

/-! ## A003775.P4947054550011910554

`record[A189003(abs(A009001(n))-1)]`
-/

namespace A003775.P4947054550011910554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (|A009001 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P4947054550011910554

/-! ## A003775.P17277033287984768638

`record[A189003(abs(n/A009001(n)))]`
-/

namespace A003775.P17277033287984768638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189003 (SequenceMachineLib.roundAway |(n : ℚ) / (A009001 n : ℚ)|).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003775.P17277033287984768638

/-! ## A003775.P10059123856459502695

`A001519(n+1)*A004253(n+1)`
-/

namespace A003775.P10059123856459502695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) * A004253 (n + 1)

end

end A003775.P10059123856459502695

/-! ## A003775.P13430549833538202657

`A000045(Δ[n²])*A004253(n+1)`
-/

namespace A003775.P13430549833538202657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A004253 (n + 1)

end

end A003775.P13430549833538202657

/-!
# A003777: a(n) = n^3 + n^2 - 1.

The programs for A003777, the canonical program `A003777.P10121058096625278706` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003777 has offset 1).

The definition of A003777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3+(n+1)²-1` (program `A003777.P10121058096625278706`, by `A003777.P10121058096625278706.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A003777.P10121058096625278706

`(n+1)^3+(n+1)²-1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A003777

/-- `(n+1)^3+(n+1)²-1` -/
def P10121058096625278706.Spec : Prop :=
  ∀ n, P10121058096625278706.a n = A003777 (n + 1)

theorem P10121058096625278706.correct : P10121058096625278706.Spec := by
  intro n
  simp only [A003777, Nat.add_sub_cancel]

end A003777

/-! ## A003777.P9025416478079175120

`abs(1-lcm(n+2, (n+1)²))`
-/

namespace A003777.P9025416478079175120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℤ)|

end

end A003777.P9025416478079175120

namespace A003777

/-- `abs(1-lcm(n+2, (n+1)²))` -/
def P9025416478079175120.Spec : Prop :=
  ∀ n, P9025416478079175120.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P12534296808881240228

`abs(∑[∑[a(n-1)+6]]-1)` with `a(0)=2`
-/

namespace A003777.P12534296808881240228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1|

end

end A003777.P12534296808881240228

namespace A003777

/-- `abs(∑[∑[a(n-1)+6]]-1)` -/
def P12534296808881240228.Spec : Prop :=
  ∀ n, P12534296808881240228.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P1644934110647879153

`floor((n+2)/sinh((1/(n+1))²))`
-/

namespace A003777.P1644934110647879153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.sinh ((1 / (n + 1 : ℚ)) ^ 2 : ℝ)⌋

end

end A003777.P1644934110647879153

namespace A003777

/-- `floor((n+2)/sinh((1/(n+1))²))` -/
def P1644934110647879153.Spec : Prop :=
  ∀ n, P1644934110647879153.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P9240781178785059955

`abs(record[n*n*(n-2)+1]+n)`
-/

namespace A003777.P9240781178785059955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((n : ℤ) - 2)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)|

end

end A003777.P9240781178785059955

namespace A003777

/-- `abs(record[n*n*(n-2)+1]+n)` -/
def P9240781178785059955.Spec : Prop :=
  ∀ n, P9240781178785059955.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P12374350869610305852

`and(∑[∑[a(n-1)+6]]-1, -1)` with `a(0)=2`
-/

namespace A003777.P12374350869610305852
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (-1)

end

end A003777.P12374350869610305852

namespace A003777

/-- `and(∑[∑[a(n-1)+6]]-1, -1)` -/
def P12374350869610305852.Spec : Prop :=
  ∀ n, P12374350869610305852.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P13849052572664977942

`or(1, 2*n+(n+3)*∑[2*n])`
-/

namespace A003777.P13849052572664977942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n + (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A003777.P13849052572664977942

namespace A003777

/-- `or(1, 2*n+(n+3)*∑[2*n])` -/
def P13849052572664977942.Spec : Prop :=
  ∀ n, (P13849052572664977942.a n : ℤ) = A003777 (n + 1)

end A003777

/-! ## A003777.P5699343788364279862

`xor(1, 2*n+(n+3)*∑[2*n])`
-/

namespace A003777.P5699343788364279862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A003777.P5699343788364279862

namespace A003777

/-- `xor(1, 2*n+(n+3)*∑[2*n])` -/
def P5699343788364279862.Spec : Prop :=
  ∀ n, (P5699343788364279862.a n : ℤ) = A003777 (n + 1)

end A003777

/-! ## A003777.P12022961427934175782

`floor(3*(n+1)²+a(n-1)-(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003777.P12022961427934175782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (n + 1) ^ 2 : ℤ) + (a (n - 1) - (n + 1 : ℤ))

end

end A003777.P12022961427934175782

namespace A003777

/-- `floor(3*(n+1)²+a(n-1)-(n+1))` -/
def P12022961427934175782.Spec : Prop :=
  ∀ n, P12022961427934175782.a n = A003777 (n + 1)

theorem P12022961427934175782.correct : P12022961427934175782.Spec := by
  intro n
  induction n with
  | zero => simp [A003777, A003777.P12022961427934175782.a, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A003777, Nat.add_sub_cancel, A003777.P12022961427934175782.a, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A003777

/-! ## A003777.P2748185014288273215

`floor(a(n-1)+(2*n+n+2)*(n+1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A003777.P2748185014288273215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (2 * n + (n + 2)) * (n + 1)

end

end A003777.P2748185014288273215

namespace A003777

/-- `floor(a(n-1)+(2*n+n+2)*(n+1))` -/
def P2748185014288273215.Spec : Prop :=
  ∀ n, (P2748185014288273215.a n : ℤ) = A003777 (n + 1)

theorem P2748185014288273215.correct : P2748185014288273215.Spec := by
  intro n
  induction n with
  | zero => simp [A003777, A003777.P2748185014288273215.a, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A003777, Nat.add_sub_cancel, A003777.P2748185014288273215.a, A003777.P10121058096625278706.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A003777

/-! ## A003777.P8841911961853140996

`(n+3)*(lcm(n, n+1)+(2*n+1)/(n+3))`
-/

namespace A003777.P8841911961853140996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((Nat.lcm n (n + 1) : ℚ) + (2 * n + 1 : ℚ) / (n + 3 : ℚ))

end

end A003777.P8841911961853140996

namespace A003777

/-- `(n+3)*(lcm(n, n+1)+(2*n+1)/(n+3))` -/
def P8841911961853140996.Spec : Prop :=
  ∀ n, P8841911961853140996.a n = (A003777 (n + 1) : ℚ)

end A003777

/-! ## A003777.P8223803264517124212

`∑[(n+1)*((n+1)%(2*n+1)+2*n+1)]`
-/

namespace A003777.P8223803264517124212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((n + 1) % (2 * n + 1) + (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003777.P8223803264517124212

namespace A003777

/-- `∑[(n+1)*((n+1)%(2*n+1)+2*n+1)]` -/
def P8223803264517124212.Spec : Prop :=
  ∀ n, (P8223803264517124212.a n : ℤ) = A003777 (n + 1)

end A003777

/-! ## A003777.P13249610174045898070

`abs(∑[∑[2*A016777(n)]]-1)`
-/

namespace A003777.P13249610174045898070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A003777.P13249610174045898070

namespace A003777

/-- `abs(∑[∑[2*A016777(n)]]-1)` -/
def P13249610174045898070.Spec : Prop :=
  ∀ n, P13249610174045898070.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P8157695229235816352

`(A048395(n+1)-(n+3))/2`
-/

namespace A003777.P8157695229235816352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048395 (n + 1) - (n + 3 : ℤ) : ℚ) / 2

end

end A003777.P8157695229235816352

namespace A003777

/-- `(A048395(n+1)-(n+3))/2` -/
def P8157695229235816352.Spec : Prop :=
  ∀ n, P8157695229235816352.a n = (A003777 (n + 1) : ℚ)

theorem P8157695229235816352.correct : P8157695229235816352.Spec := by
  intro n
  simp only [A003777, Nat.add_sub_cancel, A003777.P8157695229235816352.a, A003777.P10121058096625278706.a, A048395, A048395.P3571630861933578872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A003777

/-! ## A003777.P13413609658553804115

`abs((n+2)*A000290(n+1)-1)`
-/

namespace A003777.P13413609658553804115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 2 : ℤ) * A000290 (n + 1) - 1|

end

end A003777.P13413609658553804115

namespace A003777

/-- `abs((n+2)*A000290(n+1)-1)` -/
def P13413609658553804115.Spec : Prop :=
  ∀ n, P13413609658553804115.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P6729982587374008114

`abs(2*(n+1)*A000217(n+1)-1)`
-/

namespace A003777.P6729982587374008114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) * A000217 (n + 1) - 1|

end

end A003777.P6729982587374008114

namespace A003777

/-- `abs(2*(n+1)*A000217(n+1)-1)` -/
def P6729982587374008114.Spec : Prop :=
  ∀ n, P6729982587374008114.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P385758033343274447

`∑[A103517(n)+A028896(n)]`
-/

namespace A003777.P385758033343274447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A003777.P385758033343274447

namespace A003777

/-- `∑[A103517(n)+A028896(n)]` -/
def P385758033343274447.Spec : Prop :=
  ∀ n, P385758033343274447.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P325659113495555460

`A269641(n+1)%A250352(n+1)`
-/

namespace A003777.P325659113495555460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269641 (n + 1)) (A250352 (n + 1))

end

end A003777.P325659113495555460

namespace A003777

/-- `A269641(n+1)%A250352(n+1)` -/
def P325659113495555460.Spec : Prop :=
  ∀ n, P325659113495555460.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P2864693330239266675

`abs(∑[A016777(n)+A270710(n)+1]+n)`
-/

namespace A003777.P2864693330239266675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + (A270710 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)|

end

end A003777.P2864693330239266675

namespace A003777

/-- `abs(∑[A016777(n)+A270710(n)+1]+n)` -/
def P2864693330239266675.Spec : Prop :=
  ∀ n, P2864693330239266675.a n = A003777 (n + 1)

end A003777

/-! ## A003777.P16819656000493354134

`A186147((n+1)²)`
-/

namespace A003777.P16819656000493354134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186147 ((n + 1) ^ 2)

end

end A003777.P16819656000493354134

namespace A003777

/-- `A186147((n+1)²)` -/
def P16819656000493354134.Spec : Prop :=
  ∀ n, P16819656000493354134.a n = A003777 (n + 1)

end A003777

/-!
# A003778: Number of Hamiltonian paths in P_5 X P_n.

The programs for A003778, there is no canonical definition to state claims against.
-/

/-! ## A003778.P3546296189237115992

`A332307(A374005(n+1))`
-/

namespace A003778.P3546296189237115992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374005 (n + 1)).toNat

end

end A003778.P3546296189237115992

/-! ## A003778.P4651290971784226276

`A332307(A046691(n+3))`
-/

namespace A003778.P4651290971784226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A046691 (n + 3)).toNat

end

end A003778.P4651290971784226276

/-! ## A003778.P12334837255089531567

`A332307(A167499(n+3))`
-/

namespace A003778.P12334837255089531567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A167499 (n + 3)).toNat

end

end A003778.P12334837255089531567

/-! ## A003778.P4597620030896668664

`A332307(A056000(n)+15)`
-/

namespace A003778.P4597620030896668664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A056000 n + 15).toNat

end

end A003778.P4597620030896668664

/-! ## A003778.P14604396433683132343

`A332307(A000217(n+4)+5)`
-/

namespace A003778.P14604396433683132343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000217 (n + 4) + 5).toNat

end

end A003778.P14604396433683132343

/-!
# A003779: Number of spanning trees in P_5 x P_n.

The programs for A003779, the canonical program `A003779.P7331302319062901169` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003779 has offset 1).

The definition of A003779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A003779.P7331302319062901169

`A143699(n+1)*A241606(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A003779

/-- `A143699(n+1)*A241606(n+1)` -/
def P7331302319062901169.Spec : Prop :=
  ∀ n, P7331302319062901169.a n = A003779 (n + 1)

theorem P7331302319062901169.correct : P7331302319062901169.Spec := by
  intro n
  simp only [A003779, Nat.add_sub_cancel]

end A003779

/-! ## A003779.P5542016045667240915

`A189005(Δ[n²])`
-/

namespace A003779.P5542016045667240915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A003779.P5542016045667240915

namespace A003779

/-- `A189005(Δ[n²])` -/
def P5542016045667240915.Spec : Prop :=
  ∀ n, P5542016045667240915.a n = A003779 (n + 1)

end A003779

/-! ## A003779.P8875085354342599906

`record[and(xor(1, n)-n, A189005(n))]`
-/

namespace A003779.P8875085354342599906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.xor 1 n : ℤ) - (n : ℤ)) (A189005 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003779.P8875085354342599906

namespace A003779

/-- `record[and(xor(1, n)-n, A189005(n))]` -/
def P8875085354342599906.Spec : Prop :=
  ∀ n, P8875085354342599906.a n = A003779 (n + 1)

end A003779

/-! ## A003779.P12174204703700994107

`record[A189005(A014681(n)+1)]`
-/

namespace A003779.P12174204703700994107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003779.P12174204703700994107

namespace A003779

/-- `record[A189005(A014681(n)+1)]` -/
def P12174204703700994107.Spec : Prop :=
  ∀ n, P12174204703700994107.a n = A003779 (n + 1)

end A003779

/-! ## A003779.P9708417911347102134

`record[A189005(gcd(n, A000217(n)))]`
-/

namespace A003779.P9708417911347102134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189005 (Int.gcd (n : ℤ) (A000217 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A003779.P9708417911347102134

namespace A003779

/-- `record[A189005(gcd(n, A000217(n)))]` -/
def P9708417911347102134.Spec : Prop :=
  ∀ n, P9708417911347102134.a n = A003779 (n + 1)

end A003779

/-!
# A003781: Expansion of theta series of {E_7}* lattice in powers of q^(1/2).

The programs for A003781, there is no canonical definition to state claims against.
-/

/-! ## A003781.P14089871925113684594

`A023919(4*n)`
-/

namespace A003781.P14089871925113684594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (4 * n)

end

end A003781.P14089871925113684594

/-! ## A003781.P15321033599634386245

`A023919(A008574(n))+A000007(n)`
-/

namespace A003781.P15321033599634386245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A008574 n).toNat + A000007 n

end

end A003781.P15321033599634386245

/-! ## A003781.P17348575802351338882

`A023919(A008574(n))+A014025(A019426(n))`
-/

namespace A003781.P17348575802351338882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A008574 n).toNat + A014025 (A019426 n).toNat

end

end A003781.P17348575802351338882

/-! ## A003781.P8092728589943688525

`A023919(A008574(n))+A000035(A046113(n))`
-/

namespace A003781.P8092728589943688525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A008574 n).toNat + A000035 (A046113 n).toNat

end

end A003781.P8092728589943688525

/-! ## A003781.P1726264283332876994

`A023919(A008574(n))+A000035(A062383(n))`
-/

namespace A003781.P1726264283332876994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A008574 n).toNat + A000035 (A062383 n).toNat

end

end A003781.P1726264283332876994

/-! ## A003781.P8606541804699414996

`A151878(A244041(n))+A023919(A008574(n))`
-/

namespace A003781.P8606541804699414996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A244041 n).toNat + A023919 (A008574 n).toNat

end

end A003781.P8606541804699414996

/-! ## A003781.P2038197204833981899

`A023919(A016825(n)-2)+A023919(A016825(n))`
-/

namespace A003781.P2038197204833981899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A016825 n - 2).toNat + A023919 (A016825 n).toNat

end

end A003781.P2038197204833981899

/-! ## A003781.P9438529654982710932

`A023919(A008574(n))+A000035(A023919(n))`
-/

namespace A003781.P9438529654982710932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023919 (A008574 n).toNat + A000035 (A023919 n).toNat

end

end A003781.P9438529654982710932

/-!
# A003782: Coefficients of Jacobi Eisenstein series of index 1 and weight 6.

The programs for A003782, there is no canonical definition to state claims against.
-/

/-! ## A003782.P15052813721349061165

`A243716(n+3)-A181143(A371253(n+2))`
-/

namespace A003782.P15052813721349061165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243716 (n + 3) - A181143 (A371253 (n + 2)).toNat

end

end A003782.P15052813721349061165

/-!
# A003783: Coefficients of Jacobi Eisenstein series of index 1 and weight 8.

The programs for A003783, there is no canonical definition to state claims against.
-/

/-! ## A003783.P17746023452538216421

`A127289(A235373(n))-n`
-/

namespace A003783.P17746023452538216421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127289 (A235373 n).toNat - (n : ℤ)

end

end A003783.P17746023452538216421

/-!
# A003784: Coefficients of Jacobi cusp form of index 1 and weight 10.

The programs for A003784, there is no canonical definition to state claims against.
-/

/-! ## A003784.P6704147366423217025

`A070432(A057495(3*(n+1)))*A244128(n+1)`
-/

namespace A003784.P6704147366423217025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070432 (A057495 (3 * (n + 1))).toNat * A244128 (n + 1)

end

end A003784.P6704147366423217025

/-!
# A003787: Order of universal Chevalley group A_n (3).

The programs for A003787, there is no canonical definition to state claims against.
-/

/-! ## A003787.P11632403785032144811

`3^n*(3^(n+1)-1)*a(n-1)` with `a(0)=1`
-/

namespace A003787.P11632403785032144811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (3 ^ n : ℤ) * (((3 ^ (n + 1) : ℤ) - 1) * a (n - 1))

end

end A003787.P11632403785032144811

/-! ## A003787.P11400025364644862786

`A053290(n+1)/2`
-/

namespace A003787.P11400025364644862786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053290 (n + 1) : ℚ) / 2

end

end A003787.P11400025364644862786

/-! ## A003787.P4362134765955393888

`2^n*∏[A016142(n)]`
-/

namespace A003787.P4362134765955393888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A003787.P4362134765955393888

/-! ## A003787.P9564795213572765200

`Δ[ceil(∑[A053290(n)]/2)]`
-/

namespace A003787.P9564795213572765200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003787.P9564795213572765200

/-! ## A003787.P3497390316165015072

`A000034(n)*A003793(n)`
-/

namespace A003787.P3497390316165015072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A003793 n

end

end A003787.P3497390316165015072

/-!
# A003788: Order of universal Chevalley group A_n (4).

The programs for A003788, there is no canonical definition to state claims against.
-/

/-! ## A003788.P10650094991771560462

`A053291(n+1)/3`
-/

namespace A003788.P10650094991771560462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053291 (n + 1) : ℚ) / 3

end

end A003788.P10650094991771560462

/-! ## A003788.P2327949385686531522

`∏[A115490(n+1)]/3`
-/

namespace A003788.P2327949385686531522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115490 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A003788.P2327949385686531522

/-! ## A003788.P17461512973650918921

`∏[4^n*A277929(Δ[n²])]`
-/

namespace A003788.P17461512973650918921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A277929 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A003788.P17461512973650918921

/-! ## A003788.P15120339564399132683

`3*a(n-1)*A166984(n)` with `a(0)=1`
-/

namespace A003788.P15120339564399132683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) * A166984 n

end

end A003788.P15120339564399132683

/-! ## A003788.P11389521807936827802

`(A187560(2*n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A003788.P11389521807936827802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A187560 (2 * n) + 1) * a (n - 1)

end

end A003788.P11389521807936827802

/-!
# A003789: 

The programs for A003789, there is no canonical definition to state claims against.
-/

/-! ## A003789.P16463528561737561078

`A053292(n+1)/4`
-/

namespace A003789.P16463528561737561078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053292 (n + 1) : ℚ) / 4

end

end A003789.P16463528561737561078

/-! ## A003789.P9335323644906578206

`Δ[∑[A053292(n)]/4]`
-/

namespace A003789.P9335323644906578206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053292 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A003789.P9335323644906578206

/-!
# A003790: 

The programs for A003790, there is no canonical definition to state claims against.
-/

/-! ## A003790.P13961645732544906445

`A053293(n+1)/6`
-/

namespace A003790.P13961645732544906445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053293 (n + 1) : ℚ) / 6

end

end A003790.P13961645732544906445

/-!
# A003791: 

The programs for A003791, there is no canonical definition to state claims against.
-/

/-! ## A003791.P5182470742793449926

`A052496(n+1)/7`
-/

namespace A003791.P5182470742793449926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052496 (n + 1) : ℚ) / 7

end

end A003791.P5182470742793449926

/-! ## A003791.P3000348614978952192

`∏[A171472(3*n+3)]/A171472(3*n+3)`
-/

namespace A003791.P3000348614978952192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171472 (3 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A171472 (3 * n + 3) : ℚ)

end

end A003791.P3000348614978952192

/-!
# A003792: 

The programs for A003792, there is no canonical definition to state claims against.
-/

/-! ## A003792.P14182244777177693103

`A052497(n+1)/8`
-/

namespace A003792.P14182244777177693103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052497 (n + 1) : ℚ) / 8

end

end A003792.P14182244777177693103

/-!
# A003793: Order of (usually) simple Chevalley group A_n (3).

The programs for A003793, there is no canonical definition to state claims against.
-/

/-! ## A003793.P18126137479776728843

`A003787(n)/A000034(n)`
-/

namespace A003793.P18126137479776728843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003787 n : ℚ) / (A000034 n : ℚ)

end

end A003793.P18126137479776728843

/-! ## A003793.P10070134889569814864

`A003787(n)/A006519(n²+1)`
-/

namespace A003793.P10070134889569814864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003787 n : ℚ) / (A006519 (n ^ 2 + 1) : ℚ)

end

end A003793.P10070134889569814864

/-! ## A003793.P9840076826808447740

`A003787(n)/Δ[A292640(n+1)]`
-/

namespace A003793.P9840076826808447740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292640 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003787 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A003793.P9840076826808447740

/-! ## A003793.P16011198599110600521

`floor(A053290(n+1)/2)/A000034(n)`
-/

namespace A003793.P16011198599110600521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A053290 (n + 1) : ℚ) / 2⌋ : ℚ) / (A000034 n : ℚ)

end

end A003793.P16011198599110600521

/-! ## A003793.P4042310845796072747

`2^n*∏[A016142(n)]/A000034(n)`
-/

namespace A003793.P4042310845796072747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 ^ n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) : ℚ) / (A000034 n : ℚ)

end

end A003793.P4042310845796072747

/-!
# A003794: Order of simple Chevalley group A_n (4).

The programs for A003794, there is no canonical definition to state claims against.
-/

/-! ## A003794.P3447097836331927696

`A003788(n)/A001051(A003818(n+1))`
-/

namespace A003794.P3447097836331927696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003788 n : ℚ) / (A001051 (A003818 (n + 1)).toNat : ℚ)

end

end A003794.P3447097836331927696

/-!
# A003796: Numbers with no 3 adjacent 0's in binary expansion.

The programs for A003796, the canonical program `A003796.P430726989961333611` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A003796 has offset 1).

The definition of A003796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A003796.P430726989961333611

`eq[0, A056974(2*n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A003796

/-- `eq[0, A056974(2*n+1)]` -/
def P430726989961333611.Spec : Prop :=
  ∀ n, (P430726989961333611.a n : ℤ) = A003796 (n + 1)

theorem P430726989961333611.correct : P430726989961333611.Spec := by
  intro n
  simp only [A003796, Nat.add_sub_cancel]

end A003796

/-! ## A003796.P9391112289646411721

`eq[1, A056974(n+n+1)+1]`
-/

namespace A003796.P9391112289646411721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056974 (n + n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P9391112289646411721

namespace A003796

/-- `eq[1, A056974(n+n+1)+1]` -/
def P9391112289646411721.Spec : Prop :=
  ∀ n, (P9391112289646411721.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P10292560016002019130

`comp[A004779(n)]`
-/

namespace A003796.P10292560016002019130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A003796.P10292560016002019130

namespace A003796

/-- `comp[A004779(n)]` -/
def P10292560016002019130.Spec : Prop :=
  ∀ n, (P10292560016002019130.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P5280884049738852439

`lt[A087117(n), 3]`
-/

namespace A003796.P5280884049738852439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A003796.P5280884049738852439

namespace A003796

/-- `lt[A087117(n), 3]` -/
def P5280884049738852439.Spec : Prop :=
  ∀ n, (P5280884049738852439.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P14865028226508863409

`eq[1, A025424(A087117(n)+1)]`
-/

namespace A003796.P14865028226508863409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025424 (A087117 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P14865028226508863409

namespace A003796

/-- `eq[1, A025424(A087117(n)+1)]` -/
def P14865028226508863409.Spec : Prop :=
  ∀ n, (P14865028226508863409.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P435446204293727451

`eq[2, A165020(A087117(n)+2)]`
-/

namespace A003796.P435446204293727451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165020 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P435446204293727451

namespace A003796

/-- `eq[2, A165020(A087117(n)+2)]` -/
def P435446204293727451.Spec : Prop :=
  ∀ n, (P435446204293727451.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P777716416898953219

`eq[1, A000041(A000041(A087117(n))-1)]`
-/

namespace A003796.P777716416898953219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000041 (A087117 n).toNat - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P777716416898953219

namespace A003796

/-- `eq[1, A000041(A000041(A087117(n))-1)]` -/
def P777716416898953219.Spec : Prop :=
  ∀ n, (P777716416898953219.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P6079583254783065802

`eq[A087117(n), A330167(A087117(n)+2)]`
-/

namespace A003796.P6079583254783065802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A087117 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P6079583254783065802

namespace A003796

/-- `eq[A087117(n), A330167(A087117(n)+2)]` -/
def P6079583254783065802.Spec : Prop :=
  ∀ n, (P6079583254783065802.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P3530063856721441959

`eq[A000194(2*A087117(n)), A087117(n)]`
-/

namespace A003796.P3530063856721441959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * A087117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P3530063856721441959

namespace A003796

/-- `eq[A000194(2*A087117(n)), A087117(n)]` -/
def P3530063856721441959.Spec : Prop :=
  ∀ n, (P3530063856721441959.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P13267795640241800229

`eq[1, A006530(A332810(A087117(n)+1)+1)]`
-/

namespace A003796.P13267795640241800229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A332810 (A087117 n + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P13267795640241800229

namespace A003796

/-- `eq[1, A006530(A332810(A087117(n)+1)+1)]` -/
def P13267795640241800229.Spec : Prop :=
  ∀ n, (P13267795640241800229.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P7315452700532651382

`eq[A002375(2*A087117(n)+1), A087117(n)]`
-/

namespace A003796.P7315452700532651382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (2 * A087117 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P7315452700532651382

namespace A003796

/-- `eq[A002375(2*A087117(n)+1), A087117(n)]` -/
def P7315452700532651382.Spec : Prop :=
  ∀ n, (P7315452700532651382.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P880045770252053449

`eq[A003817(n), A269170(A269170(n))]`
-/

namespace A003796.P880045770252053449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A269170 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P880045770252053449

namespace A003796

/-- `eq[A003817(n), A269170(A269170(n))]` -/
def P880045770252053449.Spec : Prop :=
  ∀ n, (P880045770252053449.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P18256631486133411594

`eq[A090077(n), A380183(A090077(n))]`
-/

namespace A003796.P18256631486133411594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A090077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P18256631486133411594

namespace A003796

/-- `eq[A090077(n), A380183(A090077(n))]` -/
def P18256631486133411594.Spec : Prop :=
  ∀ n, (P18256631486133411594.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P13321764941397529915

`eq[1, A000009(A087117(2*n+1))]`
-/

namespace A003796.P13321764941397529915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A087117 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P13321764941397529915

namespace A003796

/-- `eq[1, A000009(A087117(2*n+1))]` -/
def P13321764941397529915.Spec : Prop :=
  ∀ n, (P13321764941397529915.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P11651182709888266670

`lt[n, 2*A327190(2*n+1)]`
-/

namespace A003796.P11651182709888266670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327190 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003796.P11651182709888266670

namespace A003796

/-- `lt[n, 2*A327190(2*n+1)]` -/
def P11651182709888266670.Spec : Prop :=
  ∀ n, (P11651182709888266670.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P1532924235505753026

`lt[n, A327176(A327190(2*n+1))]`
-/

namespace A003796.P1532924235505753026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (A327190 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A003796.P1532924235505753026

namespace A003796

/-- `lt[n, A327176(A327190(2*n+1))]` -/
def P1532924235505753026.Spec : Prop :=
  ∀ n, (P1532924235505753026.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P10218774607675362300

`eq[A087117(n), A330167(A087117(n)²)]`
-/

namespace A003796.P10218774607675362300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A087117 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A003796.P10218774607675362300

namespace A003796

/-- `eq[A087117(n), A330167(A087117(n)²)]` -/
def P10218774607675362300.Spec : Prop :=
  ∀ n, (P10218774607675362300.a n : ℤ) = A003796 (n + 1)

end A003796

/-! ## A003796.P5697185105356136791

`eq[2, A087117(A157330(n+1)/2)]`
-/

namespace A003796.P5697185105356136791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (SequenceMachineLib.roundAway ((A157330 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A003796.P5697185105356136791

namespace A003796

/-- `eq[2, A087117(A157330(n+1)/2)]` -/
def P5697185105356136791.Spec : Prop :=
  ∀ n, (P5697185105356136791.a n : ℤ) = A003796 (n + 1)

end A003796

