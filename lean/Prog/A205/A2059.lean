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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A205900: Number of 8X(n+1) 0..2 arrays with 2X2 subblock determinants differing from horizontal neighbors and permanents differing from vertical neighbors.

The programs for A205900, there is no canonical definition to state claims against.
-/

/-! ## A205900.P1350046377884378637

`A205894(A302537(n)+27)`
-/

namespace A205900.P1350046377884378637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205894 (A302537 n + 27).toNat

end

end A205900.P1350046377884378637

/-!
# A205901: Number of primes between two consecutive primes of the form n^2 + 1.

The programs for A205901, there is no canonical definition to state claims against.
-/

/-! ## A205901.P17643289001901911127

`Δ[A062325(n+1)]-1`
-/

namespace A205901.P17643289001901911127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A205901.P17643289001901911127

/-! ## A205901.P8858136738332765169

`Δ[A062325(n+1)+A024000(n)]`
-/

namespace A205901.P8858136738332765169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1) + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205901.P8858136738332765169

/-! ## A205901.P13337954845158397498

`Δ[A062325(n+1)+A001478(n+1)]`
-/

namespace A205901.P13337954845158397498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1) + A001478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A205901.P13337954845158397498

/-! ## A205901.P15287833479580266117

`A062325(n+2)-(A062325(n+1)+1)`
-/

namespace A205901.P15287833479580266117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 2) - (A062325 (n + 1) + 1)

end

end A205901.P15287833479580266117

/-! ## A205901.P3803461588583808457

`A033999(A078752(n+1))+Δ[A062325(n+1)]`
-/

namespace A205901.P3803461588583808457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A078752 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A205901.P3803461588583808457

/-! ## A205901.P5786188986537744835

`Δ[A038107(A005574(n+1))]-1`
-/

namespace A205901.P5786188986537744835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A205901.P5786188986537744835

/-! ## A205901.P1370314506197255298

`A023443(Δ[A062325(n+1)])`
-/

namespace A205901.P1370314506197255298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A205901.P1370314506197255298

/-! ## A205901.P8085071919705350600

`A033999(A268581(n))+Δ[A062325(n+1)]`
-/

namespace A205901.P8085071919705350600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A268581 n).toNat + (f1 (n + 1) - f1 n)

end

end A205901.P8085071919705350600

/-! ## A205901.P6446926367757619888

`Δ[A000720(A002496(n+1))]-1`
-/

namespace A205901.P6446926367757619888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002496 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A205901.P6446926367757619888

/-! ## A205901.P5019698668635487656

`Δ[A000720(A168024(n)+1)]-1`
-/

namespace A205901.P5019698668635487656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168024 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A205901.P5019698668635487656

/-!
# A205902: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205902, there is no canonical definition to state claims against.
-/

/-! ## A205902.P5581009418727752999

`A205909(∑[4*n]+1)`
-/

namespace A205902.P5581009418727752999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205902.P5581009418727752999

/-! ## A205902.P15384570598963541182

`record[A003982(n)*A205909(n+1)]`
-/

namespace A205902.P15384570598963541182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205909 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205902.P15384570598963541182

/-!
# A205903: Number of (n+1)X3 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205903, there is no canonical definition to state claims against.
-/

/-! ## A205903.P5527985365718464021

`A205909(∑[n+1]+2)`
-/

namespace A205903.P5527985365718464021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205903.P5527985365718464021

/-! ## A205903.P5282468878507659229

`lcm(3, A205909(A133263(n+1)))`
-/

namespace A205903.P5282468878507659229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205909 (A133263 (n + 1)).toNat)

end

end A205903.P5282468878507659229

/-! ## A205903.P11084802880556520407

`record[A185916(n+1)*A205909(n+2)]`
-/

namespace A205903.P11084802880556520407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185916 (n + 1) * A205909 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205903.P11084802880556520407

/-! ## A205903.P2715172091730503375

`A205909(A133263(n+1))+A025469(n)`
-/

namespace A205903.P2715172091730503375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A133263 (n + 1)).toNat + A025469 n

end

end A205903.P2715172091730503375

/-! ## A205903.P13857100637807117532

`A205909(A133263(n+1))+A185284(n)`
-/

namespace A205903.P13857100637807117532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A133263 (n + 1)).toNat + A185284 n

end

end A205903.P13857100637807117532

/-!
# A205904: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205904, there is no canonical definition to state claims against.
-/

/-! ## A205904.P13430791622734235065

`A205909(∑[n+2]+4)`
-/

namespace A205904.P13430791622734235065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205904.P13430791622734235065

/-! ## A205904.P7664920959521032201

`lcm(3, A205909(A167614(n+1)))`
-/

namespace A205904.P7664920959521032201
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205909 (A167614 (n + 1)).toNat)

end

end A205904.P7664920959521032201

/-! ## A205904.P9811544966110538377

`A205909(A167614(n+1))+A184955(n)`
-/

namespace A205904.P9811544966110538377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A167614 (n + 1)).toNat + A184955 n

end

end A205904.P9811544966110538377

/-! ## A205904.P11800205518462286634

`A205909(A167614(n+1))%A205905(n+1)`
-/

namespace A205904.P11800205518462286634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205909 (A167614 (n + 1)).toNat) (A205905 (n + 1))

end

end A205904.P11800205518462286634

/-! ## A205904.P16734880526310483085

`A205909(A034856(n+2))+A000038(n+1)`
-/

namespace A205904.P16734880526310483085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A205904.P16734880526310483085

/-!
# A205905: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205905, there is no canonical definition to state claims against.
-/

/-! ## A205905.P269816069674406094

`A205909(A374004(n+1))`
-/

namespace A205905.P269816069674406094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A374004 (n + 1)).toNat

end

end A205905.P269816069674406094

/-! ## A205905.P10140610632772208952

`A205909(A052905(n)+9)`
-/

namespace A205905.P10140610632772208952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A052905 n + 9).toNat

end

end A205905.P10140610632772208952

/-! ## A205905.P8073647177617664301

`A205909(A055999(n)+10)`
-/

namespace A205905.P8073647177617664301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A055999 n + 10).toNat

end

end A205905.P8073647177617664301

/-! ## A205905.P7776664229086870920

`A205909(A167614(n+2)+1)`
-/

namespace A205905.P7776664229086870920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A167614 (n + 2) + 1).toNat

end

end A205905.P7776664229086870920

/-! ## A205905.P8475377485807453649

`A205909(A133263(n+3)+2)`
-/

namespace A205905.P8475377485807453649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A133263 (n + 3) + 2).toNat

end

end A205905.P8475377485807453649

/-!
# A205906: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205906, there is no canonical definition to state claims against.
-/

/-! ## A205906.P5642742609464775098

`A205909(A374005(n+1))`
-/

namespace A205906.P5642742609464775098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A374005 (n + 1)).toNat

end

end A205906.P5642742609464775098

/-! ## A205906.P11702909058503800261

`A205909(A056000(n)+15)`
-/

namespace A205906.P11702909058503800261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A056000 n + 15).toNat

end

end A205906.P11702909058503800261

/-! ## A205906.P4184800109483869583

`A205909(Δ[A264443(n)])`
-/

namespace A205906.P4184800109483869583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (f1 (n + 1) - f1 n).toNat

end

end A205906.P4184800109483869583

/-! ## A205906.P18332209413644118636

`A205909(eq[8, A140996(n)])`
-/

namespace A205906.P18332209413644118636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205906.P18332209413644118636

/-! ## A205906.P3819870284958836911

`A205909(Δ[A023545(n+1)])`
-/

namespace A205906.P3819870284958836911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (f1 (n + 1) - f1 n).toNat

end

end A205906.P3819870284958836911

/-!
# A205907: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205907, there is no canonical definition to state claims against.
-/

/-! ## A205907.P2139659286706261389

`A205909(A374007(n+1))`
-/

namespace A205907.P2139659286706261389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A374007 (n + 1)).toNat

end

end A205907.P2139659286706261389

/-! ## A205907.P16539779036722893778

`A205909(Δ[A023545(n+1)]+10)`
-/

namespace A205907.P16539779036722893778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (f1 (n + 1) - f1 n + 10).toNat

end

end A205907.P16539779036722893778

/-! ## A205907.P15653213689250569335

`A205909(eq[5, A025581(n)]+1)`
-/

namespace A205907.P15653213689250569335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205907.P15653213689250569335

/-! ## A205907.P12967469699260644923

`A205909(Δ[A264443(n+1)]-1)`
-/

namespace A205907.P12967469699260644923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (f1 (n + 1) - f1 n - 1).toNat

end

end A205907.P12967469699260644923

/-!
# A205908: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205908, there is no canonical definition to state claims against.
-/

/-! ## A205908.P7408530318469954096

`A205909(A374008(n+1))`
-/

namespace A205908.P7408530318469954096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A374008 (n + 1)).toNat

end

end A205908.P7408530318469954096

/-! ## A205908.P6774040750809417717

`A205909(A056119(n)+28)`
-/

namespace A205908.P6774040750809417717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A056119 n + 28).toNat

end

end A205908.P6774040750809417717

/-! ## A205908.P11183283264044466353

`A205909(eq[8, A131818(n+1)])`
-/

namespace A205908.P11183283264044466353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205908.P11183283264044466353

/-! ## A205908.P9785415110717749191

`A205909(A055999(n+4))`
-/

namespace A205908.P9785415110717749191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (A055999 (n + 4)).toNat

end

end A205908.P9785415110717749191

/-! ## A205908.P8015716031429382802

`A205909(eq[6, A025581(n)]+1)`
-/

namespace A205908.P8015716031429382802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A205908.P8015716031429382802

/-!
# A205909: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock the same.

The programs for A205909, there is no canonical definition to state claims against.
-/

/-! ## A205909.P16037993956044188202

`A205836(n+1)+A206054(n+1)+3`
-/

namespace A205909.P16037993956044188202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205836 (n + 1) + (A206054 (n + 1) + 3)

end

end A205909.P16037993956044188202

/-! ## A205909.P6401875471752675995

`A205917(n+1)+A006983(A218698(3*(n+1)))`
-/

namespace A205909.P6401875471752675995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (n + 1) + A006983 (A218698 (3 * (n + 1))).toNat

end

end A205909.P6401875471752675995

/-!
# A205910: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205910, there is no canonical definition to state claims against.
-/

/-! ## A205910.P18086678931294154470

`A205917((n+1)²+n²)`
-/

namespace A205910.P18086678931294154470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 ((n + 1) ^ 2 + n ^ 2)

end

end A205910.P18086678931294154470

/-!
# A205911: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205911, there is no canonical definition to state claims against.
-/

/-! ## A205911.P2369128953838570700

`A205917(∑[n+1]+2)`
-/

namespace A205911.P2369128953838570700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205911.P2369128953838570700

/-! ## A205911.P6385136178617119590

`lcm(3, A205917(A000096(n)+3))`
-/

namespace A205911.P6385136178617119590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205917 (A000096 n + 3).toNat)

end

end A205911.P6385136178617119590

/-! ## A205911.P1578779042263262643

`record[gcd(A002262(n), A205917(n+2))]`
-/

namespace A205911.P1578779042263262643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205917 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205911.P1578779042263262643

/-! ## A205911.P13658393639637224662

`record[A205917(Δ[A003453(n+5)])]`
-/

namespace A205911.P13658393639637224662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205911.P13658393639637224662

/-! ## A205911.P11753473130487509501

`record[A205917(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A205911.P11753473130487509501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205911.P11753473130487509501

/-!
# A205912: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205912, there is no canonical definition to state claims against.
-/

/-! ## A205912.P5392899643883688418

`A205917(∑[n+2]+4)`
-/

namespace A205912.P5392899643883688418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205912.P5392899643883688418

/-! ## A205912.P13622451592603384592

`lcm(3, A205917(A167614(n+1)))`
-/

namespace A205912.P13622451592603384592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205917 (A167614 (n + 1)).toNat)

end

end A205912.P13622451592603384592

/-! ## A205912.P3203177494239706946

`A205917(A167614(n+1))%A205913(n+1)`
-/

namespace A205912.P3203177494239706946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205917 (A167614 (n + 1)).toNat) (A205913 (n + 1))

end

end A205912.P3203177494239706946

/-! ## A205912.P10595377202498370902

`A205917(A034856(n+2))+A000038(n+1)`
-/

namespace A205912.P10595377202498370902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A034856 (n + 2)).toNat + A000038 (n + 1)

end

end A205912.P10595377202498370902

/-! ## A205912.P1587408857994491303

`A205917(A034856(n+2))+A188510(2*n)`
-/

namespace A205912.P1587408857994491303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A034856 (n + 2)).toNat + A188510 (2 * n)

end

end A205912.P1587408857994491303

/-!
# A205913: Number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205913, there is no canonical definition to state claims against.
-/

/-! ## A205913.P7977700482210358250

`A205917(A374004(n+1))`
-/

namespace A205913.P7977700482210358250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A374004 (n + 1)).toNat

end

end A205913.P7977700482210358250

/-! ## A205913.P6164043331111998658

`A205917(A141214(n)+7)`
-/

namespace A205913.P6164043331111998658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A141214 n + 7).toNat

end

end A205913.P6164043331111998658

/-! ## A205913.P5843236673037974778

`A205917(A052905(n)+9)`
-/

namespace A205913.P5843236673037974778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A052905 n + 9).toNat

end

end A205913.P5843236673037974778

/-! ## A205913.P14276390057799329890

`A205917(A055999(n)+10)`
-/

namespace A205913.P14276390057799329890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A055999 n + 10).toNat

end

end A205913.P14276390057799329890

/-! ## A205913.P4792807128281051695

`A205917(A167614(n+2)+1)`
-/

namespace A205913.P4792807128281051695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A167614 (n + 2) + 1).toNat

end

end A205913.P4792807128281051695

/-!
# A205914: Number of (n+1) X 6 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205914, there is no canonical definition to state claims against.
-/

/-! ## A205914.P13480754996148549339

`A205917(A374005(n+1))`
-/

namespace A205914.P13480754996148549339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A374005 (n + 1)).toNat

end

end A205914.P13480754996148549339

/-! ## A205914.P454212621839589209

`A205917(A056000(n)+15)`
-/

namespace A205914.P454212621839589209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A056000 n + 15).toNat

end

end A205914.P454212621839589209

/-! ## A205914.P15301604676058116459

`A205917(A038722(Δ[A023545(n+1)]))`
-/

namespace A205914.P15301604676058116459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205914.P15301604676058116459

/-! ## A205914.P16053781539142500133

`A205917(eq[4, A193592(n)])`
-/

namespace A205914.P16053781539142500133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205914.P16053781539142500133

/-! ## A205914.P3783059530588645009

`A205917(Δ[A023545(n+1)])`
-/

namespace A205914.P3783059530588645009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (f1 (n + 1) - f1 n).toNat

end

end A205914.P3783059530588645009

/-!
# A205915: Number of (n+1) X 7 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205915, there is no canonical definition to state claims against.
-/

/-! ## A205915.P337058197819642023

`A205917(A374007(n+1))`
-/

namespace A205915.P337058197819642023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A374007 (n + 1)).toNat

end

end A205915.P337058197819642023

/-! ## A205915.P12901498359398749920

`A205917(eq[5, A193592(n)])`
-/

namespace A205915.P12901498359398749920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205915.P12901498359398749920

/-! ## A205915.P5113092571199110153

`A205917(A055998(n+4)-2)`
-/

namespace A205915.P5113092571199110153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A055998 (n + 4) - 2).toNat

end

end A205915.P5113092571199110153

/-! ## A205915.P7441508106662415022

`A205917(eq[16, A057728(n+1)])`
-/

namespace A205915.P7441508106662415022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205915.P7441508106662415022

/-! ## A205915.P9423184039044572073

`A205917(Δ[Δ[A006504(n+1)]])`
-/

namespace A205915.P9423184039044572073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (f1 (n + 1) - f1 n).toNat

end

end A205915.P9423184039044572073

/-!
# A205916: Number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205916, there is no canonical definition to state claims against.
-/

/-! ## A205916.P16758287778510662732

`A205917(A374008(n+1))`
-/

namespace A205916.P16758287778510662732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (A374008 (n + 1)).toNat

end

end A205916.P16758287778510662732

/-! ## A205916.P8571526713513448891

`A205917(eq[6, A193592(n)])`
-/

namespace A205916.P8571526713513448891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205917 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205916.P8571526713513448891

/-!
# A205917: T(n,k) = number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors and the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205917, there is no canonical definition to state claims against.
-/

/-! ## A205917.P11621058260733215602

`A205909(n+1)-A165071(A127379(n!²))`
-/

namespace A205917.P11621058260733215602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205909 (n + 1) - A165071 (A127379 (Nat.factorial n ^ 2)).toNat

end

end A205917.P11621058260733215602

/-!
# A205918: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205918, there is no canonical definition to state claims against.
-/

/-! ## A205918.P15466973238067666873

`A205926(∑[4*n]+1)`
-/

namespace A205918.P15466973238067666873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205918.P15466973238067666873

/-! ## A205918.P8306053173550955124

`record[A205926(A330613(n+1))]`
-/

namespace A205918.P8306053173550955124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205918.P8306053173550955124

/-! ## A205918.P13420662799789101664

`record[gcd(A003987(n), A205926(n+1))]`
-/

namespace A205918.P13420662799789101664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A205926 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205918.P13420662799789101664

/-! ## A205918.P8387816946683543420

`A205926(A001844(n))*A291168(n)`
-/

namespace A205918.P8387816946683543420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A001844 n).toNat * A291168 n

end

end A205918.P8387816946683543420

/-! ## A205918.P2933461419982084086

`A007318(A000120(n))*A205926(A001844(n))`
-/

namespace A205918.P2933461419982084086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000120 n).toNat * A205926 (A001844 n).toNat

end

end A205918.P2933461419982084086

/-!
# A205919: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to one, and every 2 X 2 determinant nonzero.

The programs for A205919, there is no canonical definition to state claims against.
-/

/-! ## A205919.P4285126592285404687

`A205926(∑[n]+1)`
-/

namespace A205919.P4285126592285404687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205919.P4285126592285404687

/-! ## A205919.P30629697565755855

`record[A010054(n)*A205926(n+1)]`
-/

namespace A205919.P30629697565755855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205919.P30629697565755855

/-! ## A205919.P2714568572722593575

`record[gcd(A002262(n), A205926(n+1))]`
-/

namespace A205919.P2714568572722593575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205926 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205919.P2714568572722593575

/-! ## A205919.P326326363800665288

`record[A205926(n+1)/A296115(n+1)]`
-/

namespace A205919.P326326363800665288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205926 (n + 1) : ℚ) / (A296115 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205919.P326326363800665288

/-! ## A205919.P13664072868064958282

`A205926(A000124(n))+A021913(n²)`
-/

namespace A205919.P13664072868064958282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A000124 n).toNat + A021913 (n ^ 2)

end

end A205919.P13664072868064958282

/-!
# A205920: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205920, there is no canonical definition to state claims against.
-/

/-! ## A205920.P8466970621793532614

`A205926(∑[n+1]+2)`
-/

namespace A205920.P8466970621793532614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205920.P8466970621793532614

/-! ## A205920.P4695740663889241237

`record[A010054(n)*A205926(n+2)]`
-/

namespace A205920.P4695740663889241237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205926 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205920.P4695740663889241237

/-! ## A205920.P2557309492028282197

`record[gcd(A002262(n), A205926(n+2))]`
-/

namespace A205920.P2557309492028282197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205926 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205920.P2557309492028282197

/-! ## A205920.P6309354295879615986

`record[A205926(A133263(A028242(n)))]`
-/

namespace A205920.P6309354295879615986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205920.P6309354295879615986

/-! ## A205920.P9518049078042391446

`or(A011742(n), A205926(A000096(n)+3))`
-/

namespace A205920.P9518049078042391446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011742 n) (A205926 (A000096 n + 3).toNat)

end

end A205920.P9518049078042391446

/-!
# A205921: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205921, there is no canonical definition to state claims against.
-/

/-! ## A205921.P16148312236544189761

`A205926(∑[n+2]+4)`
-/

namespace A205921.P16148312236544189761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205921.P16148312236544189761

/-! ## A205921.P13763455914651585428

`lcm((-1)^n, A205926(A167614(n+1)))`
-/

namespace A205921.P13763455914651585428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A205926 (A167614 (n + 1)).toNat)

end

end A205921.P13763455914651585428

/-! ## A205921.P17020004424448127920

`A205926(A167614(n+1))+A178780(n)`
-/

namespace A205921.P17020004424448127920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A167614 (n + 1)).toNat + A178780 n

end

end A205921.P17020004424448127920

/-! ## A205921.P2794864391571998575

`A205926(A034856(n+2))/A007318(C(2, n))`
-/

namespace A205921.P2794864391571998575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205926 (A034856 (n + 2)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A205921.P2794864391571998575

/-! ## A205921.P6136755814028133752

`A205926(A034856(n+2))/A000041(C(2, n+2))`
-/

namespace A205921.P6136755814028133752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205926 (A034856 (n + 2)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A205921.P6136755814028133752

/-!
# A205922: Number of (n+1)X5 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205922, there is no canonical definition to state claims against.
-/

/-! ## A205922.P7455215936088048119

`A205926(A374004(n+1))`
-/

namespace A205922.P7455215936088048119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A374004 (n + 1)).toNat

end

end A205922.P7455215936088048119

/-! ## A205922.P9071612142460414739

`A205926(A052905(n)+9)`
-/

namespace A205922.P9071612142460414739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A052905 n + 9).toNat

end

end A205922.P9071612142460414739

/-! ## A205922.P10898670567319927593

`A205926(A167614(n+2)+1)`
-/

namespace A205922.P10898670567319927593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A167614 (n + 2) + 1).toNat

end

end A205922.P10898670567319927593

/-! ## A205922.P13387288723189229882

`A205926(A167487(n+2)-3)`
-/

namespace A205922.P13387288723189229882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A167487 (n + 2) - 3).toNat

end

end A205922.P13387288723189229882

/-! ## A205922.P5323737243785438347

`A205926(Δ[A023545(n+1)-n²])`
-/

namespace A205922.P5323737243785438347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (f1 (n + 1) - f1 n).toNat

end

end A205922.P5323737243785438347

/-!
# A205923: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205923, there is no canonical definition to state claims against.
-/

/-! ## A205923.P861233388213179703

`A205926(A374005(n+1))`
-/

namespace A205923.P861233388213179703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A374005 (n + 1)).toNat

end

end A205923.P861233388213179703

/-! ## A205923.P6343004134167183184

`A205926(A155212(n)+13)`
-/

namespace A205923.P6343004134167183184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A155212 n + 13).toNat

end

end A205923.P6343004134167183184

/-! ## A205923.P15958190328068028080

`A205926(A056000(n)+15)`
-/

namespace A205923.P15958190328068028080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A056000 n + 15).toNat

end

end A205923.P15958190328068028080

/-! ## A205923.P5446148420431653939

`A205926(A167614(n+3)+2)`
-/

namespace A205923.P5446148420431653939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A167614 (n + 3) + 2).toNat

end

end A205923.P5446148420431653939

/-! ## A205923.P7943907872190359736

`A205926(eq[6, A131818(n+1)])`
-/

namespace A205923.P7943907872190359736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205923.P7943907872190359736

/-!
# A205924: Number of (n+1)X7 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205924, there is no canonical definition to state claims against.
-/

/-! ## A205924.P6270390298059556753

`A205926(A374007(n+1))`
-/

namespace A205924.P6270390298059556753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A374007 (n + 1)).toNat

end

end A205924.P6270390298059556753

/-! ## A205924.P3952613919240983219

`A205926(eq[7, A131818(n+1)])`
-/

namespace A205924.P3952613919240983219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205924.P3952613919240983219

/-! ## A205924.P3608196033109554342

`A205926(Δ[A023545(n+1)]+10)`
-/

namespace A205924.P3608196033109554342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (f1 (n + 1) - f1 n + 10).toNat

end

end A205924.P3608196033109554342

/-! ## A205924.P3190710364262953812

`A205926(eq[3, A219347(n)])`
-/

namespace A205924.P3190710364262953812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205924.P3190710364262953812

/-! ## A205924.P8453645445234562295

`A205926(eq[5, A193592(n)])`
-/

namespace A205924.P8453645445234562295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205924.P8453645445234562295

/-!
# A205925: Number of (n+1)X8 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock equal to one, and every 2X2 determinant nonzero.

The programs for A205925, there is no canonical definition to state claims against.
-/

/-! ## A205925.P3850638850678671819

`A205926(A374008(n+1))`
-/

namespace A205925.P3850638850678671819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A374008 (n + 1)).toNat

end

end A205925.P3850638850678671819

/-! ## A205925.P13655418681383744166

`A205926(A167487(n+5))`
-/

namespace A205925.P13655418681383744166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A167487 (n + 5)).toNat

end

end A205925.P13655418681383744166

/-! ## A205925.P16278005791635305262

`A205926(A000217(n+6)+7)`
-/

namespace A205925.P16278005791635305262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (A000217 (n + 6) + 7).toNat

end

end A205925.P16278005791635305262

/-! ## A205925.P13023082586793044341

`A205926(eq[8, A131818(n+1)])`
-/

namespace A205925.P13023082586793044341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205925.P13023082586793044341

/-! ## A205925.P5239639778460570943

`A205926(eq[4, A219347(n)])`
-/

namespace A205925.P5239639778460570943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205926 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205925.P5239639778460570943

/-!
# A205927: 

The programs for A205927, there is no canonical definition to state claims against.
-/

/-! ## A205927.P2506871465650546942

`A205935(∑[4*n]+1)`
-/

namespace A205927.P2506871465650546942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205927.P2506871465650546942

/-!
# A205928: Number of (n+1)X2 0..3 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205928, there is no canonical definition to state claims against.
-/

/-! ## A205928.P9384070524330684082

`A205935(∑[n]+1)`
-/

namespace A205928.P9384070524330684082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205928.P9384070524330684082

/-! ## A205928.P5479927972686549474

`lcm(2, A205935(A000124(n)))`
-/

namespace A205928.P5479927972686549474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205935 (A000124 n).toNat)

end

end A205928.P5479927972686549474

/-! ## A205928.P9390851489097686353

`record[A205935(n+1)/A156725(n)]`
-/

namespace A205928.P9390851489097686353
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205935 (n + 1) : ℚ) / (A156725 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205928.P9390851489097686353

/-! ## A205928.P15049510574410107901

`record[root(A205935(n+1), A146987(n))]`
-/

namespace A205928.P15049510574410107901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205935 (n + 1) : ℝ) ^ (1 / (A146987 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205928.P15049510574410107901

/-! ## A205928.P9837638132147505217

`record[root(A205935(n+1), A193592(n))]`
-/

namespace A205928.P9837638132147505217
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205935 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205928.P9837638132147505217

/-!
# A205929: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205929, there is no canonical definition to state claims against.
-/

/-! ## A205929.P3212927109640276953

`A205935(∑[n+1]+2)`
-/

namespace A205929.P3212927109640276953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205929.P3212927109640276953

/-! ## A205929.P7551351631814827569

`record[A205935(Δ[A003453(n+5)])]`
-/

namespace A205929.P7551351631814827569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205929.P7551351631814827569

/-!
# A205930: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A205930, there is no canonical definition to state claims against.
-/

/-! ## A205930.P7632709126089291297

`A205935(∑[n+2]+4)`
-/

namespace A205930.P7632709126089291297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205930.P7632709126089291297

/-! ## A205930.P18126624435224362375

`lcm(2, A205935(A167614(n+1)))`
-/

namespace A205930.P18126624435224362375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205935 (A167614 (n + 1)).toNat)

end

end A205930.P18126624435224362375

/-! ## A205930.P11861535287876559494

`A205935(A167614(n+1))+A059995(n)`
-/

namespace A205930.P11861535287876559494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (A167614 (n + 1)).toNat + A059995 n

end

end A205930.P11861535287876559494

/-! ## A205930.P2510861404369880637

`A067059(n)*A205935(A167614(n+1))`
-/

namespace A205930.P2510861404369880637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A205935 (A167614 (n + 1)).toNat

end

end A205930.P2510861404369880637

/-! ## A205930.P7589925697427203258

`and(A205935(A167614(n+1)), A321804(n))`
-/

namespace A205930.P7589925697427203258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A205935 (A167614 (n + 1)).toNat) (A321804 n)

end

end A205930.P7589925697427203258

/-!
# A205931: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A205931, there is no canonical definition to state claims against.
-/

/-! ## A205931.P3468885860168907054

`A205935(A141214(n)+7)`
-/

namespace A205931.P3468885860168907054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (A141214 n + 7).toNat

end

end A205931.P3468885860168907054

/-! ## A205931.P3803814058586947384

`A205935(eq[3, A193592(n)])`
-/

namespace A205931.P3803814058586947384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205931.P3803814058586947384

/-! ## A205931.P2787058704118637763

`A205935(A000096(n+3)-2)`
-/

namespace A205931.P2787058704118637763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (A000096 (n + 3) - 2).toNat

end

end A205931.P2787058704118637763

/-!
# A205932: 

The programs for A205932, there is no canonical definition to state claims against.
-/

/-! ## A205932.P16558974759184408625

`A205935(eq[4, A193592(n)])`
-/

namespace A205932.P16558974759184408625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205932.P16558974759184408625

/-! ## A205932.P5717236122859398380

`A205935(Δ[A023545(n+1)])`
-/

namespace A205932.P5717236122859398380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (f1 (n + 1) - f1 n).toNat

end

end A205932.P5717236122859398380

/-! ## A205932.P12392856033346716674

`A205935(A055999(n+2)+2)`
-/

namespace A205932.P12392856033346716674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (A055999 (n + 2) + 2).toNat

end

end A205932.P12392856033346716674

/-!
# A205933: 

The programs for A205933, there is no canonical definition to state claims against.
-/

/-! ## A205933.P17657867955209391778

`A205935(eq[5, A193592(n)])`
-/

namespace A205933.P17657867955209391778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205933.P17657867955209391778

/-!
# A205936: Number of (n+1) X (n+1) 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205936, there is no canonical definition to state claims against.
-/

/-! ## A205936.P3449562180174480874

`A205944(∑[4*n]+1)`
-/

namespace A205936.P3449562180174480874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205936.P3449562180174480874

/-! ## A205936.P8691103998703164514

`lcm(2, A205944(or(1, ∑[4*n])))`
-/

namespace A205936.P8691103998703164514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205944 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A205936.P8691103998703164514

/-! ## A205936.P16873788468946650430

`lcm(4, A205944(xor(1, ∑[4*n])))`
-/

namespace A205936.P16873788468946650430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A205944 (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A205936.P16873788468946650430

/-!
# A205937: Number of (n+1) X 2 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205937, there is no canonical definition to state claims against.
-/

/-! ## A205937.P943364967645211314

`A205944(∑[n]+1)`
-/

namespace A205937.P943364967645211314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205937.P943364967645211314

/-! ## A205937.P6292903550302231795

`lcm(2, A205944(A000124(n)))`
-/

namespace A205937.P6292903550302231795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205944 (A000124 n).toNat)

end

end A205937.P6292903550302231795

/-! ## A205937.P4484686923526025400

`record[A205944(A056534(n+1))]`
-/

namespace A205937.P4484686923526025400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205937.P4484686923526025400

/-! ## A205937.P9858774663771679318

`record[A205944(A056536(n+1))]`
-/

namespace A205937.P9858774663771679318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205937.P9858774663771679318

/-! ## A205937.P16036368113669768510

`record[A205944(A072735(n)+1)]`
-/

namespace A205937.P16036368113669768510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A072735 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205937.P16036368113669768510

/-!
# A205938: Number of (n+1) X 3 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205938, there is no canonical definition to state claims against.
-/

/-! ## A205938.P1753035574230401077

`A205944(∑[n+1]+2)`
-/

namespace A205938.P1753035574230401077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205938.P1753035574230401077

/-! ## A205938.P9912094731670248504

`record[A010054(n)*A205944(n+2)]`
-/

namespace A205938.P9912094731670248504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205944 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205938.P9912094731670248504

/-! ## A205938.P7659348188252019149

`A007318(A000096(n))*A205944(A167499(n)-3)`
-/

namespace A205938.P7659348188252019149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A205944 (A167499 n - 3).toNat

end

end A205938.P7659348188252019149

/-! ## A205938.P1630266483292618755

`record[A205944(abs(A201163(n)))]`
-/

namespace A205938.P1630266483292618755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205938.P1630266483292618755

/-! ## A205938.P15595491842205768286

`A007318(A000096(n+1))*A205944(A000096(n+1))`
-/

namespace A205938.P15595491842205768286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (n + 1)).toNat * A205944 (A000096 (n + 1)).toNat

end

end A205938.P15595491842205768286

/-!
# A205939: Number of (n+1) X 4 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205939, there is no canonical definition to state claims against.
-/

/-! ## A205939.P3404064282586512550

`A205944(∑[n+2]+4)`
-/

namespace A205939.P3404064282586512550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205939.P3404064282586512550

/-! ## A205939.P11240421385810510541

`lcm(2, A205944(A167614(n+1)))`
-/

namespace A205939.P11240421385810510541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205944 (A167614 (n + 1)).toNat)

end

end A205939.P11240421385810510541

/-! ## A205939.P5045356987017563199

`A205944(A167614(n+1))+A086015(n)`
-/

namespace A205939.P5045356987017563199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A167614 (n + 1)).toNat + A086015 n

end

end A205939.P5045356987017563199

/-! ## A205939.P14113966126233237297

`A205944(A167614(n+1))+A178798(n)`
-/

namespace A205939.P14113966126233237297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A167614 (n + 1)).toNat + A178798 n

end

end A205939.P14113966126233237297

/-! ## A205939.P10633715997149712109

`A205944(A167614(n+1))+A180649(n)`
-/

namespace A205939.P10633715997149712109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A167614 (n + 1)).toNat + A180649 n

end

end A205939.P10633715997149712109

/-!
# A205940: Number of (n+1) X 5 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205940, there is no canonical definition to state claims against.
-/

/-! ## A205940.P1590830765486519948

`A205944(∑[n+3]+7)`
-/

namespace A205940.P1590830765486519948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205940.P1590830765486519948

/-!
# A205941: Number of (n+1) X 6 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205941, there is no canonical definition to state claims against.
-/

/-! ## A205941.P3445569604343711479

`A205944(A374005(n+1))`
-/

namespace A205941.P3445569604343711479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A374005 (n + 1)).toNat

end

end A205941.P3445569604343711479

/-! ## A205941.P16031721295314256514

`A205944(A167499(n+3))`
-/

namespace A205941.P16031721295314256514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A167499 (n + 3)).toNat

end

end A205941.P16031721295314256514

/-! ## A205941.P2411816680311166242

`A205944(A056000(n)+15)`
-/

namespace A205941.P2411816680311166242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A056000 n + 15).toNat

end

end A205941.P2411816680311166242

/-! ## A205941.P15989965443015738191

`A205944(eq[6, A131818(n+1)])`
-/

namespace A205941.P15989965443015738191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205941.P15989965443015738191

/-! ## A205941.P12679777132098625614

`A205944(C(n+5, 2)+n+1)`
-/

namespace A205941.P12679777132098625614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (Nat.choose (n + 5) 2 + n + 1)

end

end A205941.P12679777132098625614

/-!
# A205942: Number of (n+1) X 7 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205942, there is no canonical definition to state claims against.
-/

/-! ## A205942.P6051861157716479579

`A205944(A374007(n+1))`
-/

namespace A205942.P6051861157716479579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A374007 (n + 1)).toNat

end

end A205942.P6051861157716479579

/-! ## A205942.P17946251478936362406

`A205944(A167614(n+4)+3)`
-/

namespace A205942.P17946251478936362406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A167614 (n + 4) + 3).toNat

end

end A205942.P17946251478936362406

/-! ## A205942.P4656179566643844786

`A205944(eq[7, A131818(n+1)])`
-/

namespace A205942.P4656179566643844786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205942.P4656179566643844786

/-! ## A205942.P14951500634442021131

`A205944(A052905(n+3))`
-/

namespace A205942.P14951500634442021131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A052905 (n + 3)).toNat

end

end A205942.P14951500634442021131

/-! ## A205942.P6846041437457759337

`A205944(A056119(n)+16)`
-/

namespace A205942.P6846041437457759337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A056119 n + 16).toNat

end

end A205942.P6846041437457759337

/-!
# A205943: Number of (n+1) X 8 0..3 arrays with no 2 X 2 subblock having the number of clockwise edge increases equal to the number of counterclockwise edge increases in its adjacent leftward or upward neighbors.

The programs for A205943, there is no canonical definition to state claims against.
-/

/-! ## A205943.P11599521107673400875

`A205944(A374008(n+1))`
-/

namespace A205943.P11599521107673400875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A374008 (n + 1)).toNat

end

end A205943.P11599521107673400875

/-! ## A205943.P6384148433383372269

`A205944(A056119(n)+28)`
-/

namespace A205943.P6384148433383372269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A056119 n + 28).toNat

end

end A205943.P6384148433383372269

/-! ## A205943.P13072359702873836572

`A205944(eq[11, A066657(n)])`
-/

namespace A205943.P13072359702873836572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205943.P13072359702873836572

/-! ## A205943.P3213806582656156255

`A205944(A000124(n+6)+6)`
-/

namespace A205943.P3213806582656156255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A000124 (n + 6) + 6).toNat

end

end A205943.P3213806582656156255

/-! ## A205943.P16766512164560043525

`A205944(A000096(n+5)+8)`
-/

namespace A205943.P16766512164560043525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205944 (A000096 (n + 5) + 8).toNat

end

end A205943.P16766512164560043525

/-!
# A205945: Triangle read by rows related to A001700.

The programs for A205945, there is no canonical definition to state claims against.
-/

/-! ## A205945.P8911830348912892792

`A191314(C(comp[∑[n]]-n, 2)+n)`
-/

namespace A205945.P8911830348912892792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A205945.P8911830348912892792

/-! ## A205945.P18443602461014527463

`A191314(A064801(n+1))`
-/

namespace A205945.P18443602461014527463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A064801 (n + 1)).toNat

end

end A205945.P18443602461014527463

/-! ## A205945.P17301816877981470008

`A191314(comp[A004201(n+1)])`
-/

namespace A205945.P17301816877981470008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A205945.P17301816877981470008

/-! ## A205945.P7823389777565143783

`A191314(A004202(n+1)-1)`
-/

namespace A205945.P7823389777565143783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A004202 (n + 1) - 1).toNat

end

end A205945.P7823389777565143783

/-! ## A205945.P3905089403435969496

`A191314(A127739(n+1)+n)`
-/

namespace A205945.P3905089403435969496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A127739 (n + 1) + (n : ℤ)).toNat

end

end A205945.P3905089403435969496

/-!
# A205946: Triangle read by rows related to A000984, central binomial coefficients.

The programs for A205946, there is no canonical definition to state claims against.
-/

/-! ## A205946.P1766623806123180779

`A191314(lt[(ceil(sqrt(n))²-n)², n]-1)`
-/

namespace A205946.P1766623806123180779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A205946.P1766623806123180779

/-! ## A205946.P5288246670038872548

`A191314(A061885(n))`
-/

namespace A205946.P5288246670038872548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A061885 n).toNat

end

end A205946.P5288246670038872548

/-! ## A205946.P8477735720042651566

`A191314(A057944(n)+n)`
-/

namespace A205946.P8477735720042651566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A057944 n + (n : ℤ)).toNat

end

end A205946.P8477735720042651566

/-! ## A205946.P12716280394458062411

`A191314(comp[A004202(n+1)])`
-/

namespace A205946.P12716280394458062411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A205946.P12716280394458062411

/-! ## A205946.P13801122777859014305

`A191314(A004201(n+1)-1)`
-/

namespace A205946.P13801122777859014305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191314 (A004201 (n + 1) - 1).toNat

end

end A205946.P13801122777859014305

/-!
# A205947: Carmichael numbers not congruent to 1 modulo 6.

The programs for A205947, there is no canonical definition to state claims against.
-/

/-! ## A205947.P7686779499778129761

`A110889(lt[A110868(n+1), ∏{p}[n+1, #]])`
-/

namespace A205947.P7686779499778129761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110868 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A205947.P7686779499778129761

/-! ## A205947.P7072612878690018182

`A110889(lt[A110866(n+2), A110877(n+2)])`
-/

namespace A205947.P7072612878690018182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110866 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110889 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A205947.P7072612878690018182

/-!
# A205948: Number of (n+1) X (n+1) 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205948, there is no canonical definition to state claims against.
-/

/-! ## A205948.P8461334078731118169

`A205954(∑[4*n]+1)`
-/

namespace A205948.P8461334078731118169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205948.P8461334078731118169

/-!
# A205949: Number of (n+1) X 3 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205949, there is no canonical definition to state claims against.
-/

/-! ## A205949.P10721019726770005976

`A205954(∑[n+1]+2)`
-/

namespace A205949.P10721019726770005976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205949.P10721019726770005976

/-! ## A205949.P9777429533427635923

`record[A010054(n)*A205954(n+2)]`
-/

namespace A205949.P9777429533427635923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205954 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205949.P9777429533427635923

/-! ## A205949.P15327960922137808922

`record[lcm(A136521(n), A205954(n+3))]`
-/

namespace A205949.P15327960922137808922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136521 n) (A205954 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205949.P15327960922137808922

/-! ## A205949.P15055198369677829373

`record[A205954(A198453(n+1))]`
-/

namespace A205949.P15055198369677829373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A198453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205949.P15055198369677829373

/-! ## A205949.P6871478042440436116

`A205954(A000096(n+1))+A026815(n)`
-/

namespace A205949.P6871478042440436116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A000096 (n + 1)).toNat + A026815 n

end

end A205949.P6871478042440436116

/-!
# A205950: Number of (n+1) X 4 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205950, there is no canonical definition to state claims against.
-/

/-! ## A205950.P1076094702011578653

`A205954(∑[n+2]+4)`
-/

namespace A205950.P1076094702011578653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205950.P1076094702011578653

/-! ## A205950.P989510648727042395

`lcm(2, A205954(A167614(n+1)))`
-/

namespace A205950.P989510648727042395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205954 (A167614 (n + 1)).toNat)

end

end A205950.P989510648727042395

/-! ## A205950.P3086503713936058869

`A205954(A167614(n+1))+A151949(n)`
-/

namespace A205950.P3086503713936058869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A167614 (n + 1)).toNat + A151949 n

end

end A205950.P3086503713936058869

/-! ## A205950.P16081846520607112195

`A205954(A167614(n+1))+A184955(n)`
-/

namespace A205950.P16081846520607112195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A167614 (n + 1)).toNat + A184955 n

end

end A205950.P16081846520607112195

/-! ## A205950.P13606665891387128542

`A205954(A167614(n+1))+A185284(n)`
-/

namespace A205950.P13606665891387128542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A167614 (n + 1)).toNat + A185284 n

end

end A205950.P13606665891387128542

/-!
# A205951: Number of (n+1) X 5 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205951, there is no canonical definition to state claims against.
-/

/-! ## A205951.P9679765734548478486

`A205954(A374004(n+1))`
-/

namespace A205951.P9679765734548478486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A374004 (n + 1)).toNat

end

end A205951.P9679765734548478486

/-! ## A205951.P6723273839979211929

`A205954(A141214(n)+7)`
-/

namespace A205951.P6723273839979211929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A141214 n + 7).toNat

end

end A205951.P6723273839979211929

/-! ## A205951.P5949992862372584765

`A205954(A052905(n)+9)`
-/

namespace A205951.P5949992862372584765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A052905 n + 9).toNat

end

end A205951.P5949992862372584765

/-! ## A205951.P5888677212204366453

`A205954(A055999(n)+10)`
-/

namespace A205951.P5888677212204366453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A055999 n + 10).toNat

end

end A205951.P5888677212204366453

/-!
# A205952: Number of (n+1) X 6 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205952, there is no canonical definition to state claims against.
-/

/-! ## A205952.P8344590768136727842

`A205954(∑[n+5]+6)`
-/

namespace A205952.P8344590768136727842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A205952.P8344590768136727842

/-!
# A205953: Number of (n+1) X 7 0..3 arrays with no 2 X 2 subblock having the same number of clockwise edge increases as its horizontal neighbors or the same number of counterclockwise edge increases as its vertical neighbors.

The programs for A205953, there is no canonical definition to state claims against.
-/

/-! ## A205953.P14287333745221072252

`A205954(A374007(n+1))`
-/

namespace A205953.P14287333745221072252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205954 (A374007 (n + 1)).toNat

end

end A205953.P14287333745221072252

/-!
# A205955: a(n) = prime(n) * (prime(n+2) - prime(n+1)).

The programs for A205955, the canonical program `A205955.P11019694915119694483` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205955 has offset 1).

The definition of A205955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205955.P14205156372127043508

`Δ[A007504(n)]*A001223(n+2)`
-/

namespace A205955.P14205156372127043508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001223 (n + 2)

end

end A205955.P14205156372127043508

namespace A205955

/-- `Δ[A007504(n)]*A001223(n+2)` -/
def P14205156372127043508.Spec : Prop :=
  ∀ n, P14205156372127043508.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P3186305781610397969

`A090076(n+1)-A006094(n+1)`
-/

namespace A205955.P3186305781610397969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - A006094 (n + 1)

end

end A205955.P3186305781610397969

namespace A205955

/-- `A090076(n+1)-A006094(n+1)` -/
def P3186305781610397969.Spec : Prop :=
  ∀ n, P3186305781610397969.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P12085904166054272993

`A152530(n+1)-A037167(n+1)`
-/

namespace A205955.P12085904166054272993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152530 (n + 1) - A037167 (n + 1)

end

end A205955.P12085904166054272993

namespace A205955

/-- `A152530(n+1)-A037167(n+1)` -/
def P12085904166054272993.Spec : Prop :=
  ∀ n, P12085904166054272993.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P11048913685895643689

`A000040(n+1)*A001223(n+2)`
-/

namespace A205955.P11048913685895643689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001223 (n + 2)

end

end A205955.P11048913685895643689

namespace A205955

/-- `A000040(n+1)*A001223(n+2)` -/
def P11048913685895643689.Spec : Prop :=
  ∀ n, P11048913685895643689.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P10203890771653602653

`A028334(n+2)*A100484(n+1)`
-/

namespace A205955.P10203890771653602653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2) * A100484 (n + 1)

end

end A205955.P10203890771653602653

namespace A205955

/-- `A028334(n+2)*A100484(n+1)` -/
def P10203890771653602653.Spec : Prop :=
  ∀ n, P10203890771653602653.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P9216320884863301623

`(A176246(n+1)+1)*A000040(n+1)`
-/

namespace A205955.P9216320884863301623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176246 (n + 1) + 1) * A000040 (n + 1)

end

end A205955.P9216320884863301623

namespace A205955

/-- `(A176246(n+1)+1)*A000040(n+1)` -/
def P9216320884863301623.Spec : Prop :=
  ∀ n, P9216320884863301623.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P15023249454395870292

`(A008347(n+1)+A008347(n))*A001223(n+2)`
-/

namespace A205955.P15023249454395870292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008347 (n + 1) + A008347 n) * A001223 (n + 2)

end

end A205955.P15023249454395870292

namespace A205955

/-- `(A008347(n+1)+A008347(n))*A001223(n+2)` -/
def P15023249454395870292.Spec : Prop :=
  ∀ n, P15023249454395870292.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P2446016707273577117

`(A007504(n+1)-A007504(n))*A001223(n+2)`
-/

namespace A205955.P2446016707273577117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) - A007504 n) * A001223 (n + 2)

end

end A205955.P2446016707273577117

namespace A205955

/-- `(A007504(n+1)-A007504(n))*A001223(n+2)` -/
def P2446016707273577117.Spec : Prop :=
  ∀ n, P2446016707273577117.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P3975216668757317983

`(A093667(n+1)-A000040(n+1))*A000040(n+1)`
-/

namespace A205955.P3975216668757317983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A093667 (n + 1) - A000040 (n + 1)) * A000040 (n + 1)

end

end A205955.P3975216668757317983

namespace A205955

/-- `(A093667(n+1)-A000040(n+1))*A000040(n+1)` -/
def P3975216668757317983.Spec : Prop :=
  ∀ n, P3975216668757317983.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P11019694915119694483

`(A000040(n+1)-A096379(n+1))*A000040(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205955

/-- `(A000040(n+1)-A096379(n+1))*A000040(n+1)` -/
def P11019694915119694483.Spec : Prop :=
  ∀ n, P11019694915119694483.a n = A205955 (n + 1)

theorem P11019694915119694483.correct : P11019694915119694483.Spec := by
  intro n
  simp only [A205955, Nat.add_sub_cancel]

end A205955

/-! ## A205955.P10815184225081358973

`A001223(n+2)*A008578(n+2)`
-/

namespace A205955.P10815184225081358973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) * A008578 (n + 2)

end

end A205955.P10815184225081358973

namespace A205955

/-- `A001223(n+2)*A008578(n+2)` -/
def P10815184225081358973.Spec : Prop :=
  ∀ n, P10815184225081358973.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P5279817841483813227

`A001223(n+2)*A182986(n+2)`
-/

namespace A205955.P5279817841483813227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) * A182986 (n + 2)

end

end A205955.P5279817841483813227

namespace A205955

/-- `A001223(n+2)*A182986(n+2)` -/
def P5279817841483813227.Spec : Prop :=
  ∀ n, P5279817841483813227.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P18390527345447628056

`Δ[A065091(n+1)]*Δ[A007504(n)]`
-/

namespace A205955.P18390527345447628056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A205955.P18390527345447628056

namespace A205955

/-- `Δ[A065091(n+1)]*Δ[A007504(n)]` -/
def P18390527345447628056.Spec : Prop :=
  ∀ n, P18390527345447628056.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P10830453280094355186

`Δ[A065091(n+1)]*A000040(n+1)`
-/

namespace A205955.P10830453280094355186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000040 (n + 1)

end

end A205955.P10830453280094355186

namespace A205955

/-- `Δ[A065091(n+1)]*A000040(n+1)` -/
def P10830453280094355186.Spec : Prop :=
  ∀ n, P10830453280094355186.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P6238548884505087195

`(A036467(n+1)+A036467(n))*A001223(n+2)`
-/

namespace A205955.P6238548884505087195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A036467 (n + 1) + A036467 n) * A001223 (n + 2)

end

end A205955.P6238548884505087195

namespace A205955

/-- `(A036467(n+1)+A036467(n))*A001223(n+2)` -/
def P6238548884505087195.Spec : Prop :=
  ∀ n, P6238548884505087195.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P10041209460462751840

`A001248(n+2)-(A056221(n+1)+A006094(n+1))`
-/

namespace A205955.P10041209460462751840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) - (A056221 (n + 1) + A006094 (n + 1))

end

end A205955.P10041209460462751840

namespace A205955

/-- `A001248(n+2)-(A056221(n+1)+A006094(n+1))` -/
def P10041209460462751840.Spec : Prop :=
  ∀ n, P10041209460462751840.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P13663888060112671201

`A000040(n+1)+A000040(n+1)*A046933(n+2)`
-/

namespace A205955.P13663888060112671201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 1) * A046933 (n + 2)

end

end A205955.P13663888060112671201

namespace A205955

/-- `A000040(n+1)+A000040(n+1)*A046933(n+2)` -/
def P13663888060112671201.Spec : Prop :=
  ∀ n, P13663888060112671201.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P13153174207866390749

`Δ[A007504(n)]*A054541(n+3)`
-/

namespace A205955.P13153174207866390749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A054541 (n + 3)

end

end A205955.P13153174207866390749

namespace A205955

/-- `Δ[A007504(n)]*A054541(n+3)` -/
def P13153174207866390749.Spec : Prop :=
  ∀ n, P13153174207866390749.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P13093679312340700146

`A000040(n+1)*A075526(n+2)`
-/

namespace A205955.P13093679312340700146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A075526 (n + 2)

end

end A205955.P13093679312340700146

namespace A205955

/-- `A000040(n+1)*A075526(n+2)` -/
def P13093679312340700146.Spec : Prop :=
  ∀ n, P13093679312340700146.a n = A205955 (n + 1)

end A205955

/-! ## A205955.P3261025885492378049

`A000040(n+1)*A054541(n+3)`
-/

namespace A205955.P3261025885492378049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A054541 (n + 3)

end

end A205955.P3261025885492378049

namespace A205955

/-- `A000040(n+1)*A054541(n+3)` -/
def P3261025885492378049.Spec : Prop :=
  ∀ n, P3261025885492378049.a n = A205955 (n + 1)

end A205955

/-!
# A205956: Distinct primes occurring as not necessarily consecutive subsequences in decimal representation of 39467139.

The programs for A205956, there is no canonical definition to state claims against.
-/

/-! ## A205956.P12878428880755324134

`A000040(∑[A348406(A083706(n))])`
-/

namespace A205956.P12878428880755324134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (A083706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A205956.P12878428880755324134

/-! ## A205956.P2173177313498280679

`p?[A032852(n+1)%A168264(n+1)]`
-/

namespace A205956.P2173177313498280679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032852 (n + 1)) (A168264 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A205956.P2173177313498280679

/-! ## A205956.P6145684280006961251

`A381239(A381225(n)+1)`
-/

namespace A205956.P6145684280006961251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381239 (A381225 n + 1).toNat

end

end A205956.P6145684280006961251

/-! ## A205956.P5844806963375861621

`A381239(A043315(n+2))`
-/

namespace A205956.P5844806963375861621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381239 (A043315 (n + 2)).toNat

end

end A205956.P5844806963375861621

/-! ## A205956.P16068360955595053058

`A381239(A044912(n+2))`
-/

namespace A205956.P16068360955595053058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381239 (A044912 (n + 2)).toNat

end

end A205956.P16068360955595053058

/-!
# A205957: a(n) = exp(-Sum_{k=1..n} Sum_{d|k, d prime} moebius(d)*log(k/d)).

The programs for A205957, there is no canonical definition to state claims against.
-/

/-! ## A205957.P11473506714238439237

`∏[∏{p}[n, n/#]]`
-/

namespace A205957.P11473506714238439237
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n : ℚ) / (p : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A205957.P11473506714238439237

/-! ## A205957.P11509435867450954163

`a(n-1)*∏{p}[n, n/#]` with `a(0)=1`
-/

namespace A205957.P11509435867450954163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), (n : ℚ) / (p : ℚ))

end

end A205957.P11509435867450954163

/-! ## A205957.P2083287026585787454

`a(n-1)/∏{p}[n, #/n]` with `a(0)=1`
-/

namespace A205957.P2083287026585787454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n : ℚ))

end

end A205957.P2083287026585787454

/-! ## A205957.P890823077242389352

`a(n-1)*A205959(n)` with `a(0)=1`
-/

namespace A205957.P890823077242389352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A205959 n

end

end A205957.P890823077242389352

/-! ## A205957.P6543506850866996703

`∏[A205959(A000007(n)+n)]`
-/

namespace A205957.P6543506850866996703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A205957.P6543506850866996703

/-! ## A205957.P239644301343056597

`∏[A205959(or(n, A000007(n)))]`
-/

namespace A205957.P239644301343056597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A205957.P239644301343056597

/-! ## A205957.P9183544711912205849

`∏[A205959(n+1)]/A205959(n+1)`
-/

namespace A205957.P9183544711912205849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A205959 (n + 1) : ℚ)

end

end A205957.P9183544711912205849

/-!
# A205958: a(0) = 1 and a(n) = A180000(n)*a(floor(n/2))^2 for n > 0.

The programs for A205958, there is no canonical definition to state claims against.
-/

/-! ## A205958.P16784805147896357146

`A230714(n)/n!`
-/

namespace A205958.P16784805147896357146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230714 n : ℚ) / (Nat.factorial n : ℚ)

end

end A205958.P16784805147896357146

/-! ## A205958.P11583477755268487821

`A230714(n)/A000142(n)`
-/

namespace A205958.P11583477755268487821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230714 n : ℚ) / (A000142 n : ℚ)

end

end A205958.P11583477755268487821

/-! ## A205958.P2205484328345949311

`A230714(n)/Δ[A003422(n)]`
-/

namespace A205958.P2205484328345949311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230714 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A205958.P2205484328345949311

/-! ## A205958.P10413488608134463790

`a(A004526(n))²*A180000(n)` with `a(0)=1`
-/

namespace A205958.P10413488608134463790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat ^ 2 * A180000 n

end

end A205958.P10413488608134463790

/-!
# A205959: a(n) = n^omega(n)/rad(n).

The programs for A205959, the canonical program `A205959.P963165392652231860` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205959 has offset 1).

The definition of A205959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205959.P963165392652231860

`∏{p}[n+1, ceil(n/#)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A205959

/-- `∏{p}[n+1, ceil(n/#)]` -/
def P963165392652231860.Spec : Prop :=
  ∀ n, P963165392652231860.a n = A205959 (n + 1)

theorem P963165392652231860.correct : P963165392652231860.Spec := by
  intro n
  simp only [A205959, Nat.add_sub_cancel]

end A205959

/-! ## A205959.P3040815159566870519

`floor(∏{p}[n+1, (n+1)/#])`
-/

namespace A205959.P3040815159566870519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)⌋

end

end A205959.P3040815159566870519

namespace A205959

/-- `floor(∏{p}[n+1, (n+1)/#])` -/
def P3040815159566870519.Spec : Prop :=
  ∀ n, P3040815159566870519.a n = A205959 (n + 1)

end A205959

/-! ## A205959.P3708034843648835466

`round(∏{p}[n+1, (n+1)/#])`
-/

namespace A205959.P3708034843648835466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))

end

end A205959.P3708034843648835466

namespace A205959

/-- `round(∏{p}[n+1, (n+1)/#])` -/
def P3708034843648835466.Spec : Prop :=
  ∀ n, P3708034843648835466.a n = A205959 (n + 1)

end A205959

/-! ## A205959.P11659399608576400891

`1/∏{p}[n+1, #/(n+1)]`
-/

namespace A205959.P11659399608576400891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 1 : ℚ))

end

end A205959.P11659399608576400891

namespace A205959

/-- `1/∏{p}[n+1, #/(n+1)]` -/
def P11659399608576400891.Spec : Prop :=
  ∀ n, P11659399608576400891.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P1312345625576606544

`2^∑{p}[n+1, log2((n+1)/#)]`
-/

namespace A205959.P1312345625576606544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 ((n + 1 : ℚ) / (p : ℚ) : ℝ))

end

end A205959.P1312345625576606544

namespace A205959

/-- `2^∑{p}[n+1, log2((n+1)/#)]` -/
def P1312345625576606544.Spec : Prop :=
  ∀ n, P1312345625576606544.a n = (A205959 (n + 1) : ℝ)

end A205959

/-! ## A205959.P409499510171770292

`A003557(n+1)*A304404(n+1)`
-/

namespace A205959.P409499510171770292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A304404 (n + 1)

end

end A205959.P409499510171770292

namespace A205959

/-- `A003557(n+1)*A304404(n+1)` -/
def P409499510171770292.Spec : Prop :=
  ∀ n, P409499510171770292.a n = A205959 (n + 1)

end A205959

/-! ## A205959.P12801914249128539042

`A062509(n+1)/A007947(n+1)`
-/

namespace A205959.P12801914249128539042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062509 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A205959.P12801914249128539042

namespace A205959

/-- `A062509(n+1)/A007947(n+1)` -/
def P12801914249128539042.Spec : Prop :=
  ∀ n, P12801914249128539042.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P5210049363103973718

`A363923(n+1)/A363919(n+1)`
-/

namespace A205959.P5210049363103973718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363923 (n + 1) : ℚ) / (A363919 (n + 1) : ℚ)

end

end A205959.P5210049363103973718

namespace A205959

/-- `A363923(n+1)/A363919(n+1)` -/
def P5210049363103973718.Spec : Prop :=
  ∀ n, P5210049363103973718.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P13945629541357706824

`A062509(n+1)/A015052(A015052(n+1))`
-/

namespace A205959.P13945629541357706824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062509 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A205959.P13945629541357706824

namespace A205959

/-- `A062509(n+1)/A015052(A015052(n+1))` -/
def P13945629541357706824.Spec : Prop :=
  ∀ n, P13945629541357706824.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P11408991574839806251

`A062509(n+1)/A015053(A015053(n+1))`
-/

namespace A205959.P11408991574839806251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062509 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A205959.P11408991574839806251

namespace A205959

/-- `A062509(n+1)/A015053(A015053(n+1))` -/
def P11408991574839806251.Spec : Prop :=
  ∀ n, P11408991574839806251.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P6727067214435677920

`A363917(n+1)/(A005361(n+1)*A363919(n+1))`
-/

namespace A205959.P6727067214435677920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A005361 (n + 1) * A363919 (n + 1) : ℚ)

end

end A205959.P6727067214435677920

namespace A205959

/-- `A363917(n+1)/(A005361(n+1)*A363919(n+1))` -/
def P6727067214435677920.Spec : Prop :=
  ∀ n, P6727067214435677920.a n = (A205959 (n + 1) : ℚ)

end A205959

/-! ## A205959.P15674905860526161134

`A304404(n+1)/A163176(n+1)*A341108(n)`
-/

namespace A205959.P15674905860526161134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304404 (n + 1) : ℚ) / (A163176 (n + 1) : ℚ) * (A341108 n : ℚ)

end

end A205959.P15674905860526161134

namespace A205959

/-- `A304404(n+1)/A163176(n+1)*A341108(n)` -/
def P15674905860526161134.Spec : Prop :=
  ∀ n, P15674905860526161134.a n = (A205959 (n + 1) : ℚ)

end A205959

/-!
# A205963: a(n) = Fibonacci(n)*A000118(n) for n>=1 with a(0)=1, where A000118(n) is the number of ways of writing n as a sum of 4 squares.

The programs for A205963, there is no canonical definition to state claims against.
-/

/-! ## A205963.P10761944117946085238

`A000118(n)*A324969(n+1)`
-/

namespace A205963.P10761944117946085238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A324969 (n + 1)

end

end A205963.P10761944117946085238

/-! ## A205963.P744725819012432256

`A000045(A028310(n))*A000118(n)`
-/

namespace A205963.P744725819012432256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A000118 n

end

end A205963.P744725819012432256

/-! ## A205963.P12914113962898901259

`A004525(A000118(n))*A055389(n)`
-/

namespace A205963.P12914113962898901259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000118 n).toNat * A055389 n

end

end A205963.P12914113962898901259

/-! ## A205963.P7153155866794376063

`A000045(A233583(n+1))*A000118(n)`
-/

namespace A205963.P7153155866794376063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A000118 n

end

end A205963.P7153155866794376063

/-! ## A205963.P13079026005845785008

`A000045(A000007(n)+n)*A000118(n)`
-/

namespace A205963.P13079026005845785008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000007 n + (n : ℤ)).toNat * A000118 n

end

end A205963.P13079026005845785008

/-! ## A205963.P5884033394777005932

`A000118(n)/A000143(n)*A205964(n)`
-/

namespace A205963.P5884033394777005932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n : ℚ) / (A000143 n : ℚ) * (A205964 n : ℚ)

end

end A205963.P5884033394777005932

/-! ## A205963.P4660011631639756330

`A205964(n)/A209444(n)*A209443(n)`
-/

namespace A205963.P4660011631639756330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 n : ℚ) / (A209444 n : ℚ) * (A209443 n : ℚ)

end

end A205963.P4660011631639756330

/-! ## A205963.P12329755593542744662

`A000118(n)*A058071(A000124(n))`
-/

namespace A205963.P12329755593542744662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A058071 (A000124 n).toNat

end

end A205963.P12329755593542744662

/-!
# A205964: a(n) = Fibonacci(n)*A000143(n) for n>=1 with a(0)=1, where A000143(n) is the number of ways of writing n as a sum of 8 squares.

The programs for A205964, there is no canonical definition to state claims against.
-/

/-! ## A205964.P1891870891877916092

`A000143(n)*A324969(n+1)`
-/

namespace A205964.P1891870891877916092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A324969 (n + 1)

end

end A205964.P1891870891877916092

/-! ## A205964.P13207452350543372563

`A000045(A028310(n))*A000143(n)`
-/

namespace A205964.P13207452350543372563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A000143 n

end

end A205964.P13207452350543372563

/-! ## A205964.P8306137036016775058

`A000045(A000007(n)+n)*A000143(n)`
-/

namespace A205964.P8306137036016775058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000007 n + (n : ℤ)).toNat * A000143 n

end

end A205964.P8306137036016775058

/-! ## A205964.P3950369327181294444

`A000143(n)/A000118(n)*A205963(n)`
-/

namespace A205964.P3950369327181294444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n : ℚ) / (A000118 n : ℚ) * (A205963 n : ℚ)

end

end A205964.P3950369327181294444

/-! ## A205964.P7918922846030647445

`(A212804(n+1)+A000007(n))*A000143(n)`
-/

namespace A205964.P7918922846030647445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) + A000007 n) * A000143 n

end

end A205964.P7918922846030647445

/-! ## A205964.P6851735939224731605

`A000045(A008619(A004273(n)))*A000143(n)`
-/

namespace A205964.P6851735939224731605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 (A004273 n).toNat).toNat * A000143 n

end

end A205964.P6851735939224731605

/-! ## A205964.P9569140519259360953

`A205963(n)/A209443(n)*A209444(n)`
-/

namespace A205964.P9569140519259360953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205963 n : ℚ) / (A209443 n : ℚ) * (A209444 n : ℚ)

end

end A205964.P9569140519259360953

/-! ## A205964.P17323279613613897596

`A000143(n)*A094441(A161680(n))`
-/

namespace A205964.P17323279613613897596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A094441 (A161680 n).toNat

end

end A205964.P17323279613613897596

/-!
# A205965: a(n) = Fibonacci(n)*A001227(n) for n>=1, where A001227(n) is the number of odd divisors of n.

The programs for A205965, the canonical program `A205965.P16527723628671375637` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205965 has offset 1).

The definition of A205965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205965.P16527723628671375637

`A000045(n+1)*∑{d}[n+1, #%2]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A205965

/-- `A000045(n+1)*∑{d}[n+1, #%2]` -/
def P16527723628671375637.Spec : Prop :=
  ∀ n, P16527723628671375637.a n = A205965 (n + 1)

theorem P16527723628671375637.correct : P16527723628671375637.Spec := by
  intro n
  simp only [A205965, Nat.add_sub_cancel]

end A205965

/-! ## A205965.P15849237624949007321

`A000045(n+1)*A001227(n+1)`
-/

namespace A205965.P15849237624949007321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001227 (n + 1)

end

end A205965.P15849237624949007321

namespace A205965

/-- `A000045(n+1)*A001227(n+1)` -/
def P15849237624949007321.Spec : Prop :=
  ∀ n, P15849237624949007321.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P11666382436826241508

`A001227(n+1)*A212804(n+2)`
-/

namespace A205965.P11666382436826241508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A212804 (n + 2)

end

end A205965.P11666382436826241508

namespace A205965

/-- `A001227(n+1)*A212804(n+2)` -/
def P11666382436826241508.Spec : Prop :=
  ∀ n, P11666382436826241508.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P18072990467292946473

`A001227(n+1)*A324969(n+2)`
-/

namespace A205965.P18072990467292946473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A324969 (n + 2)

end

end A205965.P18072990467292946473

namespace A205965

/-- `A001227(n+1)*A324969(n+2)` -/
def P18072990467292946473.Spec : Prop :=
  ∀ n, P18072990467292946473.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P7430660039137978485

`(A000071(n+1)+1)*A001227(n+1)`
-/

namespace A205965.P7430660039137978485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A001227 (n + 1)

end

end A205965.P7430660039137978485

namespace A205965

/-- `(A000071(n+1)+1)*A001227(n+1)` -/
def P7430660039137978485.Spec : Prop :=
  ∀ n, P7430660039137978485.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P10271754126324568109

`(A069283(n+1)+1)*A000045(n+1)`
-/

namespace A205965.P10271754126324568109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069283 (n + 1) + 1) * A000045 (n + 1)

end

end A205965.P10271754126324568109

namespace A205965

/-- `(A069283(n+1)+1)*A000045(n+1)` -/
def P10271754126324568109.Spec : Prop :=
  ∀ n, P10271754126324568109.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P7394365031504678031

`A000045(n+1)*A091954(2*(n+1))`
-/

namespace A205965.P7394365031504678031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A091954 (2 * (n + 1))

end

end A205965.P7394365031504678031

namespace A205965

/-- `A000045(n+1)*A091954(2*(n+1))` -/
def P7394365031504678031.Spec : Prop :=
  ∀ n, P7394365031504678031.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P1762628708214098377

`A000005(A336158(n+1))*∑[A212804(n)]`
-/

namespace A205965.P1762628708214098377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336158 (n + 1)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205965.P1762628708214098377

namespace A205965

/-- `A000005(A336158(n+1))*∑[A212804(n)]` -/
def P1762628708214098377.Spec : Prop :=
  ∀ n, P1762628708214098377.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P16593651644814986094

`A000045(n+1)*A000005(A000265(n+1))`
-/

namespace A205965.P16593651644814986094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000005 (A000265 (n + 1)).toNat

end

end A205965.P16593651644814986094

namespace A205965

/-- `A000045(n+1)*A000005(A000265(n+1))` -/
def P16593651644814986094.Spec : Prop :=
  ∀ n, P16593651644814986094.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P2573158094815423563

`A000045(n+1)*A000005(A336158(n+1))`
-/

namespace A205965.P2573158094815423563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000005 (A336158 (n + 1)).toNat

end

end A205965.P2573158094815423563

namespace A205965

/-- `A000045(n+1)*A000005(A336158(n+1))` -/
def P2573158094815423563.Spec : Prop :=
  ∀ n, P2573158094815423563.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P5524896197894204770

`(A060831(n+1)-A060831(n))*A000045(n+1)`
-/

namespace A205965.P5524896197894204770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060831 (n + 1) - A060831 n) * A000045 (n + 1)

end

end A205965.P5524896197894204770

namespace A205965

/-- `(A060831(n+1)-A060831(n))*A000045(n+1)` -/
def P5524896197894204770.Spec : Prop :=
  ∀ n, P5524896197894204770.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P14763823755024900444

`(A282694(n+1)+A032020(n+1))*A001227(n+1)`
-/

namespace A205965.P14763823755024900444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A282694 (n + 1) + A032020 (n + 1)) * A001227 (n + 1)

end

end A205965.P14763823755024900444

namespace A205965

/-- `(A282694(n+1)+A032020(n+1))*A001227(n+1)` -/
def P14763823755024900444.Spec : Prop :=
  ∀ n, P14763823755024900444.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P11318979543671122273

`A001227(n+1)*A060865(n+1)*A174883(n+1)`
-/

namespace A205965.P11318979543671122273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) * A060865 (n + 1) * A174883 (n + 1)

end

end A205965.P11318979543671122273

namespace A205965

/-- `A001227(n+1)*A060865(n+1)*A174883(n+1)` -/
def P11318979543671122273.Spec : Prop :=
  ∀ n, P11318979543671122273.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P15984960154928057624

`(A000005(2*(n+1))-A183063(2*(n+1)))*A000045(n+1)`
-/

namespace A205965.P15984960154928057624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (2 * (n + 1)) - A183063 (2 * (n + 1))) * A000045 (n + 1)

end

end A205965.P15984960154928057624

namespace A205965

/-- `(A000005(2*(n+1))-A183063(2*(n+1)))*A000045(n+1)` -/
def P15984960154928057624.Spec : Prop :=
  ∀ n, P15984960154928057624.a n = A205965 (n + 1)

end A205965

/-! ## A205965.P5530336846900220868

`A203847(n+1)/A001511(n+1)`
-/

namespace A205965.P5530336846900220868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203847 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A205965.P5530336846900220868

namespace A205965

/-- `A203847(n+1)/A001511(n+1)` -/
def P5530336846900220868.Spec : Prop :=
  ∀ n, P5530336846900220868.a n = (A205965 (n + 1) : ℚ)

end A205965

/-! ## A205965.P12953540086244420594

`A001227(n+1)/A000005(n+1)*A203847(n+1)`
-/

namespace A205965.P12953540086244420594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A203847 (n + 1) : ℚ)

end

end A205965.P12953540086244420594

namespace A205965

/-- `A001227(n+1)/A000005(n+1)*A203847(n+1)` -/
def P12953540086244420594.Spec : Prop :=
  ∀ n, P12953540086244420594.a n = (A205965 (n + 1) : ℚ)

end A205965

/-! ## A205965.P6443013557335571610

`A001227(n+1)/A008653(n+1)*A205967(n+1)`
-/

namespace A205965.P6443013557335571610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A008653 (n + 1) : ℚ) * (A205967 (n + 1) : ℚ)

end

end A205965.P6443013557335571610

namespace A205965

/-- `A001227(n+1)/A008653(n+1)*A205967(n+1)` -/
def P6443013557335571610.Spec : Prop :=
  ∀ n, P6443013557335571610.a n = (A205965 (n + 1) : ℚ)

end A205965

/-! ## A205965.P5340686640460626571

`A001227(n+1)/A000143(n+1)*A205964(n+1)`
-/

namespace A205965.P5340686640460626571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A000143 (n + 1) : ℚ) * (A205964 (n + 1) : ℚ)

end

end A205965.P5340686640460626571

namespace A205965

/-- `A001227(n+1)/A000143(n+1)*A205964(n+1)` -/
def P5340686640460626571.Spec : Prop :=
  ∀ n, P5340686640460626571.a n = (A205965 (n + 1) : ℚ)

end A205965

/-! ## A205965.P13941040940255996772

`A205964(n+1)/A209444(n+1)*A209445(n+1)`
-/

namespace A205965.P13941040940255996772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 (n + 1) : ℚ) / (A209444 (n + 1) : ℚ) * (A209445 (n + 1) : ℚ)

end

end A205965.P13941040940255996772

namespace A205965

/-- `A205964(n+1)/A209444(n+1)*A209445(n+1)` -/
def P13941040940255996772.Spec : Prop :=
  ∀ n, P13941040940255996772.a n = (A205965 (n + 1) : ℚ)

end A205965

/-!
# A205966: a(n) = Fibonacci(n)*A004016(n) for n>=1, with a(0)=1, where A004016(n) is the number of integer solutions (x,y) to x^2 + x*y + y^2 = n.

The programs for A205966, there is no canonical definition to state claims against.
-/

/-! ## A205966.P16622518802438706080

`A004016(n)*A324969(n+1)`
-/

namespace A205966.P16622518802438706080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A324969 (n + 1)

end

end A205966.P16622518802438706080

/-! ## A205966.P10799867563606177566

`Δ[A128588(n+1)]*A004525(A004016(n))`
-/

namespace A205966.P10799867563606177566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004525 (A004016 n).toNat

end

end A205966.P10799867563606177566

/-! ## A205966.P11455232564634389218

`lcm(A004016(n), A205972(n))`
-/

namespace A205966.P11455232564634389218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004016 n) (A205972 n)

end

end A205966.P11455232564634389218

/-! ## A205966.P8761407091533317626

`A004016(n)/A008653(n)*A205967(n)`
-/

namespace A205966.P8761407091533317626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205966.P8761407091533317626

/-! ## A205966.P7237041099051559723

`A004016(n)/A000143(n)*A205964(n)`
-/

namespace A205966.P7237041099051559723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A000143 n : ℚ) * (A205964 n : ℚ)

end

end A205966.P7237041099051559723

/-! ## A205966.P11564897415654782179

`A004016(n)/A008655(n)*A205968(n)`
-/

namespace A205966.P11564897415654782179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A008655 n : ℚ) * (A205968 n : ℚ)

end

end A205966.P11564897415654782179

/-! ## A205966.P8866911801915646415

`A205967(n)/A209447(n)*A209446(n)`
-/

namespace A205966.P8866911801915646415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A209447 n : ℚ) * (A209446 n : ℚ)

end

end A205966.P8866911801915646415

/-! ## A205966.P16823755469362330904

`gcd(A000045(n), A088305(n))*A004016(n)`
-/

namespace A205966.P16823755469362330904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000045 n) (A088305 n) : ℤ) * A004016 n

end

end A205966.P16823755469362330904

/-!
# A205967: a(n) = Fibonacci(n)*A008653(n) for n>=1, with a(0)=1, where A008653 is the theta series of direct sum of 2 copies of hexagonal lattice.

The programs for A205967, there is no canonical definition to state claims against.
-/

/-! ## A205967.P7033533987837390072

`A008653(n)*A324969(n+1)`
-/

namespace A205967.P7033533987837390072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n * A324969 (n + 1)

end

end A205967.P7033533987837390072

/-! ## A205967.P6846058870014682604

`A000045(A028310(n))*A008653(n)`
-/

namespace A205967.P6846058870014682604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A008653 n

end

end A205967.P6846058870014682604

/-! ## A205967.P2827727338416193118

`A000045(A233583(n+1))*A008653(n)`
-/

namespace A205967.P2827727338416193118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A008653 n

end

end A205967.P2827727338416193118

/-! ## A205967.P3069500546955927077

`A008653(n)/A034896(n)*A205971(n)`
-/

namespace A205967.P3069500546955927077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A034896 n : ℚ) * (A205971 n : ℚ)

end

end A205967.P3069500546955927077

/-! ## A205967.P5633407849671834149

`A008653(n)/A109064(n)*A205882(n)`
-/

namespace A205967.P5633407849671834149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A109064 n : ℚ) * (A205882 n : ℚ)

end

end A205967.P5633407849671834149

/-! ## A205967.P4369432366193635379

`A008653(n)/A008655(n)*A205968(n)`
-/

namespace A205967.P4369432366193635379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A008655 n : ℚ) * (A205968 n : ℚ)

end

end A205967.P4369432366193635379

/-! ## A205967.P4583082268462769657

`A055389(n)*A110654(A008653(n))`
-/

namespace A205967.P4583082268462769657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n * A110654 (A008653 n).toNat

end

end A205967.P4583082268462769657

/-! ## A205967.P1532014483880856945

`A205971(n)/A209451(n)*A209447(n)`
-/

namespace A205967.P1532014483880856945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205971 n : ℚ) / (A209451 n : ℚ) * (A209447 n : ℚ)

end

end A205967.P1532014483880856945

/-! ## A205967.P8518340241062201347

`A205968(n)/A209448(n)*A209447(n)`
-/

namespace A205967.P8518340241062201347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205968 n : ℚ) / (A209448 n : ℚ) * (A209447 n : ℚ)

end

end A205967.P8518340241062201347

/-!
# A205968: a(n) = Fibonacci(n)*A008655(n) for n >= 1, with a(0)=1, where A008655 lists the coefficients in (theta_3(x)*theta_3(3*x) + theta_2(x)*theta_2(3*x))^4.

The programs for A205968, there is no canonical definition to state claims against.
-/

/-! ## A205968.P10378915761534989884

`A008655(n)*A324969(n+1)`
-/

namespace A205968.P10378915761534989884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n * A324969 (n + 1)

end

end A205968.P10378915761534989884

/-! ## A205968.P16534813241058404892

`A000045(A028310(n))*A008655(n)`
-/

namespace A205968.P16534813241058404892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A008655 n

end

end A205968.P16534813241058404892

/-! ## A205968.P16120110458064898207

`A008655(n)*A053602(A004277(n))`
-/

namespace A205968.P16120110458064898207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n * A053602 (A004277 n).toNat

end

end A205968.P16120110458064898207

/-! ## A205968.P14514023404139967120

`A000045(A233583(n+1))*A008655(n)`
-/

namespace A205968.P14514023404139967120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A008655 n

end

end A205968.P14514023404139967120

/-! ## A205968.P15880730412400251163

`A008655(n)/A008653(n)*A205967(n)`
-/

namespace A205968.P15880730412400251163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008655 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205968.P15880730412400251163

/-! ## A205968.P682272515317870848

`A205967(n)/A209447(n)*A209448(n)`
-/

namespace A205968.P682272515317870848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A209447 n : ℚ) * (A209448 n : ℚ)

end

end A205968.P682272515317870848

/-! ## A205968.P12664918530542416060

`A008655(n)*A108037(A000124(n))`
-/

namespace A205968.P12664918530542416060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n * A108037 (A000124 n).toNat

end

end A205968.P12664918530542416060

/-!
# A205969: a(n) = Fibonacci(n)*A113973(n) for n>=1, with a(0)=1, where A113973 lists the coefficients in phi(x^3)^3/phi(x) and phi() is a Ramanujan theta function.

The programs for A205969, there is no canonical definition to state claims against.
-/

/-! ## A205969.P14502103447565154442

`A113973(n)*A324969(n+1)`
-/

namespace A205969.P14502103447565154442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n * A324969 (n + 1)

end

end A205969.P14502103447565154442

/-! ## A205969.P11594375451528367784

`A324969(n+1)/A057079(n)*A193514(n)`
-/

namespace A205969.P11594375451528367784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324969 (n + 1) : ℚ) / (A057079 n : ℚ) * (A193514 n : ℚ)

end

end A205969.P11594375451528367784

/-! ## A205969.P69728512696070141

`A113973(n)/A034896(n)*A205971(n)`
-/

namespace A205969.P69728512696070141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A034896 n : ℚ) * (A205971 n : ℚ)

end

end A205969.P69728512696070141

/-! ## A205969.P3402617376897660858

`A113973(n)/A008653(n)*A205967(n)`
-/

namespace A205969.P3402617376897660858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205969.P3402617376897660858

/-! ## A205969.P13176569430502453607

`A113973(n)/A008655(n)*A205968(n)`
-/

namespace A205969.P13176569430502453607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A008655 n : ℚ) * (A205968 n : ℚ)

end

end A205969.P13176569430502453607

/-! ## A205969.P11141425785174502386

`A205968(n)/A209448(n)*A209449(n)`
-/

namespace A205969.P11141425785174502386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205968 n : ℚ) / (A209448 n : ℚ) * (A209449 n : ℚ)

end

end A205969.P11141425785174502386

/-! ## A205969.P4532290439427874710

`A113973(n)*A131410(A152947(n+1))`
-/

namespace A205969.P4532290439427874710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n * A131410 (A152947 (n + 1)).toNat

end

end A205969.P4532290439427874710

/-! ## A205969.P17613097438822124461

`A058071(A000124(n))*A113973(n)`
-/

namespace A205969.P17613097438822124461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058071 (A000124 n).toNat * A113973 n

end

end A205969.P17613097438822124461

/-! ## A205969.P18395392819824031756

`A113973(n)*A129713(A000217(n))`
-/

namespace A205969.P18395392819824031756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n * A129713 (A000217 n).toNat

end

end A205969.P18395392819824031756

/-!
# A205970: a(n) = Fibonacci(n)*A132973(n) for n>=1, with a(0)=1, where A132973 lists the coefficients in psi(-q)^3/psi(-q^3) and where psi() is a Ramanujan theta function.

The programs for A205970, there is no canonical definition to state claims against.
-/

/-! ## A205970.P17828468236181648187

`A132973(n)*A324969(n+1)`
-/

namespace A205970.P17828468236181648187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 n * A324969 (n + 1)

end

end A205970.P17828468236181648187

/-! ## A205970.P7130963444475381571

`A000045(A028310(n))*A132973(n)`
-/

namespace A205970.P7130963444475381571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A132973 n

end

end A205970.P7130963444475381571

/-! ## A205970.P18200705658743430070

`A000045(A233583(n+1))*A132973(n)`
-/

namespace A205970.P18200705658743430070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A132973 n

end

end A205970.P18200705658743430070

/-! ## A205970.P10486654661801110104

`(A000032(n)-A006355(n))*A132973(n)`
-/

namespace A205970.P10486654661801110104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n - A006355 n) * A132973 n

end

end A205970.P10486654661801110104

/-! ## A205970.P3328332167452134029

`A132973(n)/A109064(n)*A205882(n)`
-/

namespace A205970.P3328332167452134029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A109064 n : ℚ) * (A205882 n : ℚ)

end

end A205970.P3328332167452134029

/-! ## A205970.P18242314553864775339

`A132973(n)/A034896(n)*A205971(n)`
-/

namespace A205970.P18242314553864775339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A034896 n : ℚ) * (A205971 n : ℚ)

end

end A205970.P18242314553864775339

/-! ## A205970.P8951893938445247185

`A132973(n)/A008653(n)*A205967(n)`
-/

namespace A205970.P8951893938445247185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205970.P8951893938445247185

/-! ## A205970.P13018340683859062083

`A205971(n)/A209451(n)*A209450(n)`
-/

namespace A205970.P13018340683859062083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205971 n : ℚ) / (A209451 n : ℚ) * (A209450 n : ℚ)

end

end A205970.P13018340683859062083

/-!
# A205971: a(n) = Fibonacci(n)*A034896(n) for n >= 1, with a(0)=1, where A034896 lists the number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

The programs for A205971, there is no canonical definition to state claims against.
-/

/-! ## A205971.P9475213147323211287

`A034896(n)*A324969(n+1)`
-/

namespace A205971.P9475213147323211287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 n * A324969 (n + 1)

end

end A205971.P9475213147323211287

/-! ## A205971.P12607762107308638011

`A000045(A028310(n))*A034896(n)`
-/

namespace A205971.P12607762107308638011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A034896 n

end

end A205971.P12607762107308638011

/-! ## A205971.P15667295365435886739

`A000045(A233583(n+1))*A034896(n)`
-/

namespace A205971.P15667295365435886739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A034896 n

end

end A205971.P15667295365435886739

/-! ## A205971.P17061881617748932953

`A034896(n)/A109064(n)*A205882(n)`
-/

namespace A205971.P17061881617748932953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A109064 n : ℚ) * (A205882 n : ℚ)

end

end A205971.P17061881617748932953

/-! ## A205971.P1934141608319143698

`A034896(n)/A008653(n)*A205967(n)`
-/

namespace A205971.P1934141608319143698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205971.P1934141608319143698

/-! ## A205971.P14694828197410297391

`A205882(n)/A205884(n)*A209451(n)`
-/

namespace A205971.P14694828197410297391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205882 n : ℚ) / (A205884 n : ℚ) * (A209451 n : ℚ)

end

end A205971.P14694828197410297391

/-! ## A205971.P4394037902199804879

`A205967(n)/A209447(n)*A209451(n)`
-/

namespace A205971.P4394037902199804879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A209447 n : ℚ) * (A209451 n : ℚ)

end

end A205971.P4394037902199804879

/-! ## A205971.P14872795885718416734

`A000045(A051597(A161680(n)))*A034896(n)`
-/

namespace A205971.P14872795885718416734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A051597 (A161680 n).toNat).toNat * A034896 n

end

end A205971.P14872795885718416734

/-!
# A205972: a(n) = Fibonacci(n)*A122859(n) for n>=1, with a(0)=1, where A122859 lists the coefficients in phi(-q)^3/phi(-q^3) and phi() is a Ramanujan theta function.

The programs for A205972, there is no canonical definition to state claims against.
-/

/-! ## A205972.P2256915372963925803

`A122859(n)*A324969(n+1)`
-/

namespace A205972.P2256915372963925803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 n * A324969 (n + 1)

end

end A205972.P2256915372963925803

/-! ## A205972.P8863835729875499763

`A000045(A028310(n))*A122859(n)`
-/

namespace A205972.P8863835729875499763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A122859 n

end

end A205972.P8863835729875499763

/-! ## A205972.P5687918126072678670

`A000045(A233583(n+1))*A122859(n)`
-/

namespace A205972.P5687918126072678670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A122859 n

end

end A205972.P5687918126072678670

/-! ## A205972.P14359616968110995845

`A122859(n)/A109064(n)*A205882(n)`
-/

namespace A205972.P14359616968110995845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A109064 n : ℚ) * (A205882 n : ℚ)

end

end A205972.P14359616968110995845

/-! ## A205972.P11650879413258907747

`A122859(n)/A034896(n)*A205971(n)`
-/

namespace A205972.P11650879413258907747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A034896 n : ℚ) * (A205971 n : ℚ)

end

end A205972.P11650879413258907747

/-! ## A205972.P13435374597485820470

`A122859(n)/A008653(n)*A205967(n)`
-/

namespace A205972.P13435374597485820470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A008653 n : ℚ) * (A205967 n : ℚ)

end

end A205972.P13435374597485820470

/-! ## A205972.P2514238338289072816

`A122859(n)/A109041(n)*A205973(n)`
-/

namespace A205972.P2514238338289072816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A109041 n : ℚ) * (A205973 n : ℚ)

end

end A205972.P2514238338289072816

/-! ## A205972.P17682571354811747604

`A205971(n)/A209451(n)*A209452(n)`
-/

namespace A205972.P17682571354811747604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205971 n : ℚ) / (A209451 n : ℚ) * (A209452 n : ℚ)

end

end A205972.P17682571354811747604

/-! ## A205972.P14772094455926611463

`A205973(n)/A209453(n)*A209452(n)`
-/

namespace A205972.P14772094455926611463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205973 n : ℚ) / (A209453 n : ℚ) * (A209452 n : ℚ)

end

end A205972.P14772094455926611463

/-!
# A205973: a(n) = Fibonacci(n)*A109041(n) for n>=1, with a(0)=1, where A109041 lists the coefficients in eta(q)^9/eta(q^3)^3.

The programs for A205973, there is no canonical definition to state claims against.
-/

/-! ## A205973.P12587296198217933258

`A109041(n)*A324969(n+1)`
-/

namespace A205973.P12587296198217933258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109041 n * A324969 (n + 1)

end

end A205973.P12587296198217933258

/-! ## A205973.P9738726919755422062

`round(1/acot(A000045(n)))*A109041(n)`
-/

namespace A205973.P9738726919755422062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A000045 n : ℝ)) * A109041 n

end

end A205973.P9738726919755422062

/-! ## A205973.P840237215714393684

`A000045(round(acot(n)+n))*A109041(n)`
-/

namespace A205973.P840237215714393684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A109041 n

end

end A205973.P840237215714393684

/-! ## A205973.P10689694397413399815

`A000045(abs(1-n)+1)*A109041(n)`
-/

namespace A205973.P10689694397413399815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (n : ℤ)| + 1).toNat * A109041 n

end

end A205973.P10689694397413399815

/-! ## A205973.P3108155543012314425

`A109041(n)*A129713(∑[n])`
-/

namespace A205973.P3108155543012314425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109041 n * A129713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205973.P3108155543012314425

/-!
# A205974: a(n) = Fibonacci(n)*A033719(n) for n>=1, with a(0)=1, where A033719 lists the coefficients in theta_3(q)*theta_3(q^7).

The programs for A205974, there is no canonical definition to state claims against.
-/

/-! ## A205974.P6560083751175257757

`A033719(n)*A324969(n+1)`
-/

namespace A205974.P6560083751175257757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n * A324969 (n + 1)

end

end A205974.P6560083751175257757

/-! ## A205974.P3160195506158543278

`floor(acot(n))+A000045(n)*A033719(n)`
-/

namespace A205974.P3160195506158543278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + A000045 n * A033719 n

end

end A205974.P3160195506158543278

/-! ## A205974.P610290246661723487

`A000045(round(acot(n)+n))*A033719(n)`
-/

namespace A205974.P610290246661723487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A033719 n

end

end A205974.P610290246661723487

/-! ## A205974.P5996613938866733778

`A000045(A028310(n))*A033719(n)`
-/

namespace A205974.P5996613938866733778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A028310 n).toNat * A033719 n

end

end A205974.P5996613938866733778

/-! ## A205974.P8292322482973402713

`A000045(A233583(n+1))*A033719(n)`
-/

namespace A205974.P8292322482973402713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A233583 (n + 1)).toNat * A033719 n

end

end A205974.P8292322482973402713

/-! ## A205974.P9790127747263048322

`A000045(A065033(2*n))*A033719(n)`
-/

namespace A205974.P9790127747263048322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A065033 (2 * n)).toNat * A033719 n

end

end A205974.P9790127747263048322

/-! ## A205974.P15233498514440579584

`A000045(A123108(2*n))*A033719(n)`
-/

namespace A205974.P15233498514440579584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A123108 (2 * n)).toNat * A033719 n

end

end A205974.P15233498514440579584

/-! ## A205974.P10271262875687265775

`A000045(A000007(n)+n)*A033719(n)`
-/

namespace A205974.P10271262875687265775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000007 n + (n : ℤ)).toNat * A033719 n

end

end A205974.P10271262875687265775

/-! ## A205974.P7648551805803333467

`A205973(n)/A209453(n)*A209454(n)`
-/

namespace A205974.P7648551805803333467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205973 n : ℚ) / (A209453 n : ℚ) * (A209454 n : ℚ)

end

end A205974.P7648551805803333467

/-! ## A205974.P2359882200694265164

`A033719(n)*A129713(∑[n])`
-/

namespace A205974.P2359882200694265164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n * A129713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205974.P2359882200694265164

/-! ## A205974.P13257066994066631769

`A000045(A137735(n²))*A033719(n)`
-/

namespace A205974.P13257066994066631769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A137735 (n ^ 2)).toNat * A033719 n

end

end A205974.P13257066994066631769

/-!
# A205975: a(n) = Fibonacci(n)*A002652(n) for n>=1, with a(0)=1, where A002652 lists the coefficients in theta series of Kleinian lattice Z[(-1+sqrt(-7))/2].

The programs for A205975, there is no canonical definition to state claims against.
-/

/-! ## A205975.P15976082460747759531

`A002652(n)*A324969(n+1)`
-/

namespace A205975.P15976082460747759531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n * A324969 (n + 1)

end

end A205975.P15976082460747759531

/-! ## A205975.P14336329356738681759

`A033719(4*n)*A324969(n+1)`
-/

namespace A205975.P14336329356738681759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 (4 * n) * A324969 (n + 1)

end

end A205975.P14336329356738681759

/-! ## A205975.P16777770903472149622

`A000045(round(acot(n)+n))*A002652(n)`
-/

namespace A205975.P16777770903472149622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A002652 n

end

end A205975.P16777770903472149622

/-! ## A205975.P10254730522506247033

`A000045(abs(1-n)+1)*A002652(n)`
-/

namespace A205975.P10254730522506247033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (n : ℤ)| + 1).toNat * A002652 n

end

end A205975.P10254730522506247033

/-! ## A205975.P5780043039007637731

`A002652(n)*A053602(A004277(n))`
-/

namespace A205975.P5780043039007637731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n * A053602 (A004277 n).toNat

end

end A205975.P5780043039007637731

/-! ## A205975.P6983686496226661838

`A002652(n)/A028594(n)*A205976(n)`
-/

namespace A205975.P6983686496226661838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 n : ℚ) / (A028594 n : ℚ) * (A205976 n : ℚ)

end

end A205975.P6983686496226661838

/-! ## A205975.P1195253755424087628

`A002652(n)/A109041(n)*A205973(n)`
-/

namespace A205975.P1195253755424087628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 n : ℚ) / (A109041 n : ℚ) * (A205973 n : ℚ)

end

end A205975.P1195253755424087628

/-! ## A205975.P2376236686923049276

`A205976(n)/A209456(n)*A209455(n)`
-/

namespace A205975.P2376236686923049276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205976 n : ℚ) / (A209456 n : ℚ) * (A209455 n : ℚ)

end

end A205975.P2376236686923049276

/-! ## A205975.P2670775889969966555

`A002652(n)*A129713(∑[n])`
-/

namespace A205975.P2670775889969966555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n * A129713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205975.P2670775889969966555

/-! ## A205975.P15192582327474288217

`A129713(∑[n])*A170770(9*n)`
-/

namespace A205975.P15192582327474288217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (∑ j ∈ Finset.range (n + 1), f1 j) * A170770 (9 * n)

end

end A205975.P15192582327474288217

/-! ## A205975.P5713096559376711316

`A170770(9*n)*A324969(n+1)`
-/

namespace A205975.P5713096559376711316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170770 (9 * n) * A324969 (n + 1)

end

end A205975.P5713096559376711316

/-! ## A205975.P16070521049888850768

`round(1/acot(A000045(n)))*A170770(9*n)`
-/

namespace A205975.P16070521049888850768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A000045 n : ℝ)) * A170770 (9 * n)

end

end A205975.P16070521049888850768

/-! ## A205975.P11922906995923339425

`A000045(round(acot(n)+n))*A170770(9*n)`
-/

namespace A205975.P11922906995923339425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat * A170770 (9 * n)

end

end A205975.P11922906995923339425

/-!
# A205976: a(n) = Fibonacci(n)*A028594(n) for n>=1, with a(0)=1, where A028594 lists the coefficients in (theta_3(x)*theta_3(7*x)+theta_2(x)*theta_2(7*x))^2.

The programs for A205976, there is no canonical definition to state claims against.
-/

/-! ## A205976.P12922355970362965676

`A028594(n)*A324969(n+1)`
-/

namespace A205976.P12922355970362965676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A324969 (n + 1)

end

end A205976.P12922355970362965676

/-! ## A205976.P4585944606888831145

`A000045(abs(1-n)+1)*A028594(n)`
-/

namespace A205976.P4585944606888831145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (n : ℤ)| + 1).toNat * A028594 n

end

end A205976.P4585944606888831145

/-! ## A205976.P6150195180446056401

`A028594(n)*A129713(∑[n])`
-/

namespace A205976.P6150195180446056401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A129713 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205976.P6150195180446056401

/-! ## A205976.P12296516710325075269

`A129713(∑[n])*A170773(9*n)`
-/

namespace A205976.P12296516710325075269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 (∑ j ∈ Finset.range (n + 1), f1 j) * A170773 (9 * n)

end

end A205976.P12296516710325075269

/-! ## A205976.P11587965345429077918

`A170773(9*n)*A324969(n+1)`
-/

namespace A205976.P11587965345429077918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170773 (9 * n) * A324969 (n + 1)

end

end A205976.P11587965345429077918

/-!
# A205978: Number of (n+1)X(n+1) 0..2 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A205978, there is no canonical definition to state claims against.
-/

/-! ## A205978.P10047535950827676591

`A205986(∑[4*n]+1)`
-/

namespace A205978.P10047535950827676591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205978.P10047535950827676591

/-! ## A205978.P7289327392102348522

`lcm(3, A205986(A001844(n)))`
-/

namespace A205978.P7289327392102348522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205986 (A001844 n).toNat)

end

end A205978.P7289327392102348522

/-! ## A205978.P4593811676715266797

`record[root(A205986(n+1), A027420(n))]`
-/

namespace A205978.P4593811676715266797
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205986 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205978.P4593811676715266797

/-! ## A205978.P9860083842193116364

`record[root(A205986(n+1), A143182(n))]`
-/

namespace A205978.P9860083842193116364
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205986 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205978.P9860083842193116364

/-! ## A205978.P4048071522274304161

`record[gcd(A114327(n), A205986(n+1))]`
-/

namespace A205978.P4048071522274304161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205986 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205978.P4048071522274304161

/-!
# A205979: Number of (n+1) X 2 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two clockwise edge increases.

The programs for A205979, there is no canonical definition to state claims against.
-/

/-! ## A205979.P5818765596436100154

`A205986(∑[n]+1)`
-/

namespace A205979.P5818765596436100154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205979.P5818765596436100154

/-! ## A205979.P1974271405597257102

`lcm(3, A205986(A000124(n)))`
-/

namespace A205979.P1974271405597257102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205986 (A000124 n).toNat)

end

end A205979.P1974271405597257102

/-! ## A205979.P13304413674968097269

`record[A010054(n)*A205986(n+1)]`
-/

namespace A205979.P13304413674968097269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205979.P13304413674968097269

/-! ## A205979.P16484437564048268599

`record[A205986(n+1)/A013612(n)]`
-/

namespace A205979.P16484437564048268599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205986 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205979.P16484437564048268599

/-! ## A205979.P16879673260842718177

`record[A205986(n+1)/A001263(n+1)]`
-/

namespace A205979.P16879673260842718177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205986 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205979.P16879673260842718177

/-!
# A205980: Number of (n+1) X 3 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two clockwise edge increases.

The programs for A205980, there is no canonical definition to state claims against.
-/

/-! ## A205980.P17991723572343042546

`A205986(∑[n+1]+2)`
-/

namespace A205980.P17991723572343042546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205980.P17991723572343042546

/-! ## A205980.P466642199319531962

`record[A010054(n)*A205986(n+2)]`
-/

namespace A205980.P466642199319531962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205980.P466642199319531962

/-! ## A205980.P10319355339266912145

`lcm(3, A205986(A000096(n+1)))`
-/

namespace A205980.P10319355339266912145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205986 (A000096 (n + 1)).toNat)

end

end A205980.P10319355339266912145

/-! ## A205980.P12720628373909377882

`A083894(n+1)!*A205986(A000096(n+1))`
-/

namespace A205980.P12720628373909377882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A083894 (n + 1)).toNat : ℤ) * A205986 (A000096 (n + 1)).toNat

end

end A205980.P12720628373909377882

/-! ## A205980.P6957905588765937887

`A008683(19*A065092(n+1))*A205986(A000096(n+1))`
-/

namespace A205980.P6957905588765937887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (19 * A065092 (n + 1)).toNat * A205986 (A000096 (n + 1)).toNat

end

end A205980.P6957905588765937887

/-!
# A205981: Number of (n+1) X 4 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two clockwise edge increases.

The programs for A205981, there is no canonical definition to state claims against.
-/

/-! ## A205981.P11577535485543348128

`A205986(∑[n+2]+4)`
-/

namespace A205981.P11577535485543348128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205981.P11577535485543348128

/-! ## A205981.P1448952411923593062

`lcm(3, A205986(A167614(n+1)))`
-/

namespace A205981.P1448952411923593062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A205986 (A167614 (n + 1)).toNat)

end

end A205981.P1448952411923593062

/-! ## A205981.P7086285731851973997

`A205986(A167614(n+1))+A034459(n+1)`
-/

namespace A205981.P7086285731851973997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A167614 (n + 1)).toNat + A034459 (n + 1)

end

end A205981.P7086285731851973997

/-! ## A205981.P13718975757955809448

`A205986(A167614(n+1))%A205984(n+1)`
-/

namespace A205981.P13718975757955809448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205986 (A167614 (n + 1)).toNat) (A205984 (n + 1))

end

end A205981.P13718975757955809448

/-! ## A205981.P5497203956080632794

`or(A010054(3*n+2), A205986(A167614(n+1)))`
-/

namespace A205981.P5497203956080632794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (3 * n + 2)) (A205986 (A167614 (n + 1)).toNat)

end

end A205981.P5497203956080632794

/-!
# A205982: Number of (n+1)X5 0..2 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A205982, there is no canonical definition to state claims against.
-/

/-! ## A205982.P7198233039839151456

`A205986(A374004(n+1))`
-/

namespace A205982.P7198233039839151456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A374004 (n + 1)).toNat

end

end A205982.P7198233039839151456

/-! ## A205982.P405362307699587769

`A205986(A052905(n)+9)`
-/

namespace A205982.P405362307699587769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A052905 n + 9).toNat

end

end A205982.P405362307699587769

/-! ## A205982.P6924242099525878752

`A205986(A055999(n)+10)`
-/

namespace A205982.P6924242099525878752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A055999 n + 10).toNat

end

end A205982.P6924242099525878752

/-! ## A205982.P9756225035834685303

`A205986(A167614(n+2)+1)`
-/

namespace A205982.P9756225035834685303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A167614 (n + 2) + 1).toNat

end

end A205982.P9756225035834685303

/-! ## A205982.P5737144216071141226

`A205986(∑[n+4]+3)`
-/

namespace A205982.P5737144216071141226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A205982.P5737144216071141226

/-!
# A205983: Number of (n+1)X6 0..2 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A205983, there is no canonical definition to state claims against.
-/

/-! ## A205983.P3692716414696985354

`A205986(∑[n+4]+11)`
-/

namespace A205983.P3692716414696985354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A205983.P3692716414696985354

/-! ## A205983.P11464730856191654543

`A078315(3*n+2)*A205986(A155212(n)+13)`
-/

namespace A205983.P11464730856191654543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (3 * n + 2) * A205986 (A155212 n + 13).toNat

end

end A205983.P11464730856191654543

/-!
# A205984: Number of (n+1)X7 0..2 arrays with every 2X3 or 3X2 subblock having exactly two clockwise edge increases.

The programs for A205984, there is no canonical definition to state claims against.
-/

/-! ## A205984.P4751552381400187070

`A205986(A374007(n+1))`
-/

namespace A205984.P4751552381400187070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A374007 (n + 1)).toNat

end

end A205984.P4751552381400187070

/-! ## A205984.P13613521258130498293

`A205986(eq[7, A131818(n+1)])`
-/

namespace A205984.P13613521258130498293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205984.P13613521258130498293

/-! ## A205984.P3271528672909146632

`A205986(A052905(n+3))`
-/

namespace A205984.P3271528672909146632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A052905 (n + 3)).toNat

end

end A205984.P3271528672909146632

/-! ## A205984.P17013322313845379944

`A205986(eq[3, A219347(n)])`
-/

namespace A205984.P17013322313845379944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205984.P17013322313845379944

/-! ## A205984.P18265042513533983729

`A205986(eq[5, A193592(n)])`
-/

namespace A205984.P18265042513533983729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205984.P18265042513533983729

/-!
# A205985: Number of (n+1) X 8 0..2 arrays with every 2 X 3 or 3 X 2 subblock having exactly two clockwise edge increases.

The programs for A205985, there is no canonical definition to state claims against.
-/

/-! ## A205985.P11659512944173888741

`A205986(A374008(n+1))`
-/

namespace A205985.P11659512944173888741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A374008 (n + 1)).toNat

end

end A205985.P11659512944173888741

/-! ## A205985.P15892957685318127821

`A205986(eq[8, A131818(n+1)])`
-/

namespace A205985.P15892957685318127821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205985.P15892957685318127821

/-! ## A205985.P11318071588011968748

`A205986(Δ[Δ[A006504(n+1)]]+12)`
-/

namespace A205985.P11318071588011968748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (f1 (n + 1) - f1 n + 12).toNat

end

end A205985.P11318071588011968748

/-! ## A205985.P8305340951117138633

`A205986(A055999(n+4))`
-/

namespace A205985.P8305340951117138633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (A055999 (n + 4)).toNat

end

end A205985.P8305340951117138633

/-! ## A205985.P12173522228315389550

`A205986(eq[4, A219347(n)])`
-/

namespace A205985.P12173522228315389550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205985.P12173522228315389550

/-!
# A205987: G.f.: Sum_{n=-oo..oo} q^(9n^2+8n).

The programs for A205987, the canonical program `A205987.P4258495938364008722` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205987 has offset 0).

The definition of A205987 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205987.P1250331832444342991

`char[∑[n*gcd(2, n)^3]]`
-/

namespace A205987.P1250331832444342991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205987.P1250331832444342991

namespace A205987

/-- `char[∑[n*gcd(2, n)^3]]` -/
def P1250331832444342991.Spec : Prop :=
  ∀ n, (P1250331832444342991.a n : ℤ) = A205987 n

end A205987

/-! ## A205987.P13933132720378059781

`char[∑[n*(∑[(-1)^n]+1)^3]]`
-/

namespace A205987.P13933132720378059781
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j + 1) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205987.P13933132720378059781

namespace A205987

/-- `char[∑[n*(∑[(-1)^n]+1)^3]]` -/
def P13933132720378059781.Spec : Prop :=
  ∀ n, (P13933132720378059781.a n : ℤ) = A205987 n

end A205987

/-! ## A205987.P4258495938364008722

`A281451(n+1)%2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A205987

/-- `A281451(n+1)%2` -/
def P4258495938364008722.Spec : Prop :=
  ∀ n, P4258495938364008722.a n = A205987 n

theorem P4258495938364008722.correct : P4258495938364008722.Spec := by
  intro n
  simp only [A205987]

end A205987

/-! ## A205987.P12418841036700057934

`and(1, char[A218864(n+1)])`
-/

namespace A205987.P12418841036700057934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A205987.P12418841036700057934

namespace A205987

/-- `and(1, char[A218864(n+1)])` -/
def P12418841036700057934.Spec : Prop :=
  ∀ n, (P12418841036700057934.a n : ℤ) = A205987 n

end A205987

/-! ## A205987.P2593965552780166524

`A000203(Δ[(2*n+3)²]+n)%2`
-/

namespace A205987.P2593965552780166524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) 2

end

end A205987.P2593965552780166524

namespace A205987

/-- `A000203(Δ[(2*n+3)²]+n)%2` -/
def P2593965552780166524.Spec : Prop :=
  ∀ n, P2593965552780166524.a n = A205987 n

end A205987

/-! ## A205987.P13552596470627078306

`A000035(A281451(n+1))`
-/

namespace A205987.P13552596470627078306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A281451 (n + 1)).toNat

end

end A205987.P13552596470627078306

namespace A205987

/-- `A000035(A281451(n+1))` -/
def P13552596470627078306.Spec : Prop :=
  ∀ n, P13552596470627078306.a n = A205987 n

end A205987

/-! ## A205987.P4733939486784851566

`and(A016760(n), A281451(n+1))`
-/

namespace A205987.P4733939486784851566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016760 n) (A281451 (n + 1))

end

end A205987.P4733939486784851566

namespace A205987

/-- `and(A016760(n), A281451(n+1))` -/
def P4733939486784851566.Spec : Prop :=
  ∀ n, P4733939486784851566.a n = A205987 n

end A205987

/-! ## A205987.P9054835223799343097

`A053866(A099048(n+1)/2)`
-/

namespace A205987.P9054835223799343097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (SequenceMachineLib.roundAway ((A099048 (n + 1) : ℚ) / 2)).toNat

end

end A205987.P9054835223799343097

namespace A205987

/-- `A053866(A099048(n+1)/2)` -/
def P9054835223799343097.Spec : Prop :=
  ∀ n, P9054835223799343097.a n = A205987 n

end A205987

/-! ## A205987.P12375883850083121150

`A053866(A099048(n+1))`
-/

namespace A205987.P12375883850083121150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (A099048 (n + 1)).toNat

end

end A205987.P12375883850083121150

namespace A205987

/-- `A053866(A099048(n+1))` -/
def P12375883850083121150.Spec : Prop :=
  ∀ n, P12375883850083121150.a n = A205987 n

end A205987

/-! ## A205987.P14034993729639547636

`A089801(3*n+5)`
-/

namespace A205987.P14034993729639547636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089801 (3 * n + 5)

end

end A205987.P14034993729639547636

namespace A205987

/-- `A089801(3*n+5)` -/
def P14034993729639547636.Spec : Prop :=
  ∀ n, P14034993729639547636.a n = A205987 n

end A205987

/-! ## A205987.P16340312053442167070

`A185124(3*n+5)²`
-/

namespace A205987.P16340312053442167070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185124 (3 * n + 5) ^ 2

end

end A205987.P16340312053442167070

namespace A205987

/-- `A185124(3*n+5)²` -/
def P16340312053442167070.Spec : Prop :=
  ∀ n, P16340312053442167070.a n = A205987 n

end A205987

/-! ## A205987.P3007811742287023484

`A259884(3*n+5)%2`
-/

namespace A205987.P3007811742287023484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259884 (3 * n + 5)) 2

end

end A205987.P3007811742287023484

namespace A205987

/-- `A259884(3*n+5)%2` -/
def P3007811742287023484.Spec : Prop :=
  ∀ n, P3007811742287023484.a n = A205987 n

end A205987

/-! ## A205987.P2880434649029550744

`A010052(A017245(n+1))`
-/

namespace A205987.P2880434649029550744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A017245 (n + 1)).toNat

end

end A205987.P2880434649029550744

namespace A205987

/-- `A010052(A017245(n+1))` -/
def P2880434649029550744.Spec : Prop :=
  ∀ n, P2880434649029550744.a n = A205987 n

end A205987

/-! ## A205987.P13510540324923111987

`A266298(A017221(n)+11)`
-/

namespace A205987.P13510540324923111987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (A017221 n + 11).toNat

end

end A205987.P13510540324923111987

namespace A205987

/-- `A266298(A017221(n)+11)` -/
def P13510540324923111987.Spec : Prop :=
  ∀ n, P13510540324923111987.a n = A205987 n

end A205987

/-! ## A205987.P15002633336184656272

`A266298(A004768(n+1)+n)`
-/

namespace A205987.P15002633336184656272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266298 (A004768 (n + 1) + (n : ℤ)).toNat

end

end A205987.P15002633336184656272

namespace A205987

/-- `A266298(A004768(n+1)+n)` -/
def P15002633336184656272.Spec : Prop :=
  ∀ n, P15002633336184656272.a n = A205987 n

end A205987

/-! ## A205987.P1387377649056666535

`A267006(A004771(n+1)+n)`
-/

namespace A205987.P1387377649056666535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (A004771 (n + 1) + (n : ℤ)).toNat

end

end A205987.P1387377649056666535

namespace A205987

/-- `A267006(A004771(n+1)+n)` -/
def P1387377649056666535.Spec : Prop :=
  ∀ n, P1387377649056666535.a n = A205987 n

end A205987

/-! ## A205987.P11530731655326005613

`A010052(A022144(n+2)+n)`
-/

namespace A205987.P11530731655326005613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A022144 (n + 2) + (n : ℤ)).toNat

end

end A205987.P11530731655326005613

namespace A205987

/-- `A010052(A022144(n+2)+n)` -/
def P11530731655326005613.Spec : Prop :=
  ∀ n, P11530731655326005613.a n = A205987 n

end A205987

/-! ## A205987.P6062289430728308394

`A010052(A017137(n+1)+n+2)`
-/

namespace A205987.P6062289430728308394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A017137 (n + 1) + (n + 2 : ℤ)).toNat

end

end A205987.P6062289430728308394

namespace A205987

/-- `A010052(A017137(n+1)+n+2)` -/
def P6062289430728308394.Spec : Prop :=
  ∀ n, P6062289430728308394.a n = A205987 n

end A205987

/-! ## A205987.P13286879287504704181

`and(A195744(n), A281451(n+1))`
-/

namespace A205987.P13286879287504704181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A281451 (n + 1))

end

end A205987.P13286879287504704181

namespace A205987

/-- `and(A195744(n), A281451(n+1))` -/
def P13286879287504704181.Spec : Prop :=
  ∀ n, P13286879287504704181.a n = A205987 n

end A205987

/-! ## A205987.P9391960572451414439

`and(A281451(n+1), A305155(n))`
-/

namespace A205987.P9391960572451414439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281451 (n + 1)) (A305155 n)

end

end A205987.P9391960572451414439

namespace A205987

/-- `and(A281451(n+1), A305155(n))` -/
def P9391960572451414439.Spec : Prop :=
  ∀ n, P9391960572451414439.a n = A205987 n

end A205987

/-!
# A205988: Expansion of f(x^1, x^9) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A205988, the canonical program `A205988.P17863050628738700923` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205988 has offset 0).

The definition of A205988 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205988.P14321265628880292954

`char[∑[n*gcd(2, n)²]]`
-/

namespace A205988.P14321265628880292954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A205988.P14321265628880292954

namespace A205988

/-- `char[∑[n*gcd(2, n)²]]` -/
def P14321265628880292954.Spec : Prop :=
  ∀ n, (P14321265628880292954.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P17863050628738700923

`and(1, ∑{d}[5*n+4, #])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A205988

/-- `and(1, ∑{d}[5*n+4, #])` -/
def P17863050628738700923.Spec : Prop :=
  ∀ n, (P17863050628738700923.a n : ℤ) = A205988 n

theorem P17863050628738700923.correct : P17863050628738700923.Spec := by
  intro n
  simp only [A205988]

end A205988

/-! ## A205988.P5579289444894073972

`(∑{d}[10*n+8, #]+2)%2`
-/

namespace A205988.P5579289444894073972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), d + 2) % 2

end

end A205988.P5579289444894073972

namespace A205988

/-- `(∑{d}[10*n+8, #]+2)%2` -/
def P5579289444894073972.Spec : Prop :=
  ∀ n, (P5579289444894073972.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P11451324178154702069

`char[A195162(n)]`
-/

namespace A205988.P11451324178154702069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195162 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P11451324178154702069

namespace A205988

/-- `char[A195162(n)]` -/
def P11451324178154702069.Spec : Prop :=
  ∀ n, (P11451324178154702069.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P14767811630465298516

`and(1, A340455(n))`
-/

namespace A205988.P14767811630465298516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A340455 n)

end

end A205988.P14767811630465298516

namespace A205988

/-- `and(1, A340455(n))` -/
def P14767811630465298516.Spec : Prop :=
  ∀ n, P14767811630465298516.a n = A205988 n

end A205988

/-! ## A205988.P3268642857595302106

`char[∑[A195161(n)]]`
-/

namespace A205988.P3268642857595302106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P3268642857595302106

namespace A205988

/-- `char[∑[A195161(n)]]` -/
def P3268642857595302106.Spec : Prop :=
  ∀ n, (P3268642857595302106.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P10753666619879211884

`A053866(5*n+4)`
-/

namespace A205988.P10753666619879211884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (5 * n + 4)

end

end A205988.P10753666619879211884

namespace A205988

/-- `A053866(5*n+4)` -/
def P10753666619879211884.Spec : Prop :=
  ∀ n, P10753666619879211884.a n = A205988 n

end A205988

/-! ## A205988.P14779909444926329934

`A145377(5*n+4)`
-/

namespace A205988.P14779909444926329934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145377 (5 * n + 4)

end

end A205988.P14779909444926329934

namespace A205988

/-- `A145377(5*n+4)` -/
def P14779909444926329934.Spec : Prop :=
  ∀ n, P14779909444926329934.a n = A205988 n

end A205988

/-! ## A205988.P9668573557220807300

`A053282(n+1)%2`
-/

namespace A205988.P9668573557220807300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053282 (n + 1)) 2

end

end A205988.P9668573557220807300

namespace A205988

/-- `A053282(n+1)%2` -/
def P9668573557220807300.Spec : Prop :=
  ∀ n, P9668573557220807300.a n = A205988 n

end A205988

/-! ## A205988.P3659370678268135150

`char[∑[A188167(2*n)]]`
-/

namespace A205988.P3659370678268135150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188167 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P3659370678268135150

namespace A205988

/-- `char[∑[A188167(2*n)]]` -/
def P3659370678268135150.Spec : Prop :=
  ∀ n, (P3659370678268135150.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P5859892618157115084

`char[∑[n*A040001(n)²]]`
-/

namespace A205988.P5859892618157115084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040001 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P5859892618157115084

namespace A205988

/-- `char[∑[n*A040001(n)²]]` -/
def P5859892618157115084.Spec : Prop :=
  ∀ n, (P5859892618157115084.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P6548019504646735636

`char[∑[n*A280193(n)²]]`
-/

namespace A205988.P6548019504646735636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A280193 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P6548019504646735636

namespace A205988

/-- `char[∑[n*A280193(n)²]]` -/
def P6548019504646735636.Spec : Prop :=
  ∀ n, (P6548019504646735636.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P13824013553331724961

`A000005(5*n+4)%2`
-/

namespace A205988.P13824013553331724961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (5 * n + 4)) 2

end

end A205988.P13824013553331724961

namespace A205988

/-- `A000005(5*n+4)%2` -/
def P13824013553331724961.Spec : Prop :=
  ∀ n, P13824013553331724961.a n = A205988 n

end A205988

/-! ## A205988.P13962617084057104563

`A000203(5*n+4)%2`
-/

namespace A205988.P13962617084057104563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (5 * n + 4)) 2

end

end A205988.P13962617084057104563

namespace A205988

/-- `A000203(5*n+4)%2` -/
def P13962617084057104563.Spec : Prop :=
  ∀ n, P13962617084057104563.a n = A205988 n

end A205988

/-! ## A205988.P7059627496321364945

`char[∑[A022998(A022998(n))]]`
-/

namespace A205988.P7059627496321364945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P7059627496321364945

namespace A205988

/-- `char[∑[A022998(A022998(n))]]` -/
def P7059627496321364945.Spec : Prop :=
  ∀ n, (P7059627496321364945.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P3442388217901024742

`char[A118015(A047221(n+1))]`
-/

namespace A205988.P3442388217901024742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118015 (A047221 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A205988.P3442388217901024742

namespace A205988

/-- `char[A118015(A047221(n+1))]` -/
def P3442388217901024742.Spec : Prop :=
  ∀ n, (P3442388217901024742.a n : ℤ) = A205988 n

end A205988

/-! ## A205988.P9815548991389042476

`A000035(A000005(5*n+4))`
-/

namespace A205988.P9815548991389042476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000005 (5 * n + 4)).toNat

end

end A205988.P9815548991389042476

namespace A205988

/-- `A000035(A000005(5*n+4))` -/
def P9815548991389042476.Spec : Prop :=
  ∀ n, P9815548991389042476.a n = A205988 n

end A205988

/-! ## A205988.P16285126941232434991

`and(1, A000005(A016885(n)+1))`
-/

namespace A205988.P16285126941232434991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (A016885 n + 1).toNat)

end

end A205988.P16285126941232434991

namespace A205988

/-- `and(1, A000005(A016885(n)+1))` -/
def P16285126941232434991.Spec : Prop :=
  ∀ n, P16285126941232434991.a n = A205988 n

end A205988

/-! ## A205988.P4089958420976615443

`and(1, A000203(A016885(n)+1))`
-/

namespace A205988.P4089958420976615443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000203 (A016885 n + 1).toNat)

end

end A205988.P4089958420976615443

namespace A205988

/-- `and(1, A000203(A016885(n)+1))` -/
def P4089958420976615443.Spec : Prop :=
  ∀ n, P4089958420976615443.a n = A205988 n

end A205988

/-! ## A205988.P5209413440122427516

`and(1, A055102(2*n+1))`
-/

namespace A205988.P5209413440122427516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A055102 (2 * n + 1))

end

end A205988.P5209413440122427516

namespace A205988

/-- `and(1, A055102(2*n+1))` -/
def P5209413440122427516.Spec : Prop :=
  ∀ n, P5209413440122427516.a n = A205988 n

end A205988

/-!
# A205989: a(n) = smallest prime >= 10^n with primitive root 10.

The programs for A205989, there is no canonical definition to state claims against.
-/

/-! ## A205989.P15495579296157653711

`A001913(A086018(n)+1)`
-/

namespace A205989.P15495579296157653711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001913 (A086018 n + 1).toNat

end

end A205989.P15495579296157653711

/-! ## A205989.P17422013918570388724

`A006883(A086018(n)+2)`
-/

namespace A205989.P17422013918570388724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (A086018 n + 2).toNat

end

end A205989.P17422013918570388724

/-!
# A205990: Number of (n+1)X(n+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205990, there is no canonical definition to state claims against.
-/

/-! ## A205990.P8320248966291084656

`A205998(∑[4*n]+1)`
-/

namespace A205990.P8320248966291084656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205990.P8320248966291084656

/-! ## A205990.P16606012634786995631

`lcm(2, A205998(A001844(n)))`
-/

namespace A205990.P16606012634786995631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205998 (A001844 n).toNat)

end

end A205990.P16606012634786995631

/-! ## A205990.P18096214854676770860

`record[A003982(n)*A205998(n+1)]`
-/

namespace A205990.P18096214854676770860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A205998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205990.P18096214854676770860

/-! ## A205990.P5544045150684708258

`record[gcd(A114327(n), A205998(n+1))]`
-/

namespace A205990.P5544045150684708258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205998 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205990.P5544045150684708258

/-! ## A205990.P1497068756040399389

`A007318(∑[n])*A205998(A001844(n))`
-/

namespace A205990.P1497068756040399389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A205998 (A001844 n).toNat

end

end A205990.P1497068756040399389

/-!
# A205991: Number of (n+1) X 2 0..2 arrays with the number of clockwise edge increases in every 2 X 2 subblock equal to two, and every 2 X 2 determinant nonzero.

The programs for A205991, there is no canonical definition to state claims against.
-/

/-! ## A205991.P6271202949724121824

`A206121(n+1)-A206003(n+1)`
-/

namespace A205991.P6271202949724121824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206121 (n + 1) - A206003 (n + 1)

end

end A205991.P6271202949724121824

/-! ## A205991.P5423283867756945866

`A205998(∑[n]+1)`
-/

namespace A205991.P5423283867756945866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205991.P5423283867756945866

/-! ## A205991.P14529907608456004031

`lcm(2, A205998(A000124(n)))`
-/

namespace A205991.P14529907608456004031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205998 (A000124 n).toNat)

end

end A205991.P14529907608456004031

/-! ## A205991.P14334294773989252338

`record[gcd(A002262(n), A205998(n+1))]`
-/

namespace A205991.P14334294773989252338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205998 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205991.P14334294773989252338

/-! ## A205991.P4244215417571443584

`record[A205998(n+1)/A134991(n+1)]`
-/

namespace A205991.P4244215417571443584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205998 (n + 1) : ℚ) / (A134991 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205991.P4244215417571443584

/-!
# A205992: Number of (n+1)X3 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205992, there is no canonical definition to state claims against.
-/

/-! ## A205992.P8913039829791785369

`A206122(n+1)-A206004(n+1)`
-/

namespace A205992.P8913039829791785369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206122 (n + 1) - A206004 (n + 1)

end

end A205992.P8913039829791785369

/-! ## A205992.P3134227033034972341

`A205998(∑[n+1]+2)`
-/

namespace A205992.P3134227033034972341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205992.P3134227033034972341

/-! ## A205992.P11517287895149439812

`record[gcd(A002262(n), A205998(n+2))]`
-/

namespace A205992.P11517287895149439812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205998 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205992.P11517287895149439812

/-! ## A205992.P15421604697982271336

`record[A205998(A133263(A137734(n)))]`
-/

namespace A205992.P15421604697982271336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A133263 (A137734 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205992.P15421604697982271336

/-! ## A205992.P14592544166760257662

`A014963(15*(n+1))*A205998(A000096(n)+3)`
-/

namespace A205992.P14592544166760257662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A205998 (A000096 n + 3).toNat

end

end A205992.P14592544166760257662

/-!
# A205993: Number of (n+1)X4 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205993, there is no canonical definition to state claims against.
-/

/-! ## A205993.P13494134005536442866

`A206123(n+1)-A206005(n+1)`
-/

namespace A205993.P13494134005536442866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206123 (n + 1) - A206005 (n + 1)

end

end A205993.P13494134005536442866

/-! ## A205993.P10119602092342763979

`A205998(∑[n+2]+4)`
-/

namespace A205993.P10119602092342763979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205993.P10119602092342763979

/-! ## A205993.P11617195683839465090

`A206123(n+1)-A206010(∑[n+2]+4)`
-/

namespace A205993.P11617195683839465090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206123 (n + 1) - A206010 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205993.P11617195683839465090

/-! ## A205993.P468041214188621453

`A205998(A167614(n+1))+A011742(n)`
-/

namespace A205993.P468041214188621453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A167614 (n + 1)).toNat + A011742 n

end

end A205993.P468041214188621453

/-! ## A205993.P10885094364962894747

`or(A000038(n), A205998(A167614(n+1)))`
-/

namespace A205993.P10885094364962894747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A205998 (A167614 (n + 1)).toNat)

end

end A205993.P10885094364962894747

/-!
# A205994: Number of (n+1)X5 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205994, there is no canonical definition to state claims against.
-/

/-! ## A205994.P17414579940686369641

`A205998(A374004(n+1))`
-/

namespace A205994.P17414579940686369641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A374004 (n + 1)).toNat

end

end A205994.P17414579940686369641

/-! ## A205994.P1341935700960846551

`A205998(A052905(n)+9)`
-/

namespace A205994.P1341935700960846551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A052905 n + 9).toNat

end

end A205994.P1341935700960846551

/-! ## A205994.P12873654142009486221

`A205998(A167614(n+2)+1)`
-/

namespace A205994.P12873654142009486221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A167614 (n + 2) + 1).toNat

end

end A205994.P12873654142009486221

/-! ## A205994.P14517359996250102277

`A205998(A000124(n+3)+3)`
-/

namespace A205994.P14517359996250102277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A000124 (n + 3) + 3).toNat

end

end A205994.P14517359996250102277

/-! ## A205994.P6411104160530650928

`A205998(A167487(n+2)-3)`
-/

namespace A205994.P6411104160530650928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A167487 (n + 2) - 3).toNat

end

end A205994.P6411104160530650928

/-!
# A205995: Number of (n+1)X6 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205995, there is no canonical definition to state claims against.
-/

/-! ## A205995.P13456731296172537991

`A206125(n+1)-A206007(n+1)`
-/

namespace A205995.P13456731296172537991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206125 (n + 1) - A206007 (n + 1)

end

end A205995.P13456731296172537991

/-! ## A205995.P11198799040122190645

`A205998(A374005(n+1))`
-/

namespace A205995.P11198799040122190645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A374005 (n + 1)).toNat

end

end A205995.P11198799040122190645

/-! ## A205995.P14298160354919439828

`A205998(A167499(n+3))`
-/

namespace A205995.P14298160354919439828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A167499 (n + 3)).toNat

end

end A205995.P14298160354919439828

/-! ## A205995.P17827244962408778733

`A205998(A038722(Δ[A023545(n+1)]))`
-/

namespace A205995.P17827244962408778733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A205995.P17827244962408778733

/-! ## A205995.P6280036367289117281

`A205998(Δ[A264443(n)])`
-/

namespace A205995.P6280036367289117281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (f1 (n + 1) - f1 n).toNat

end

end A205995.P6280036367289117281

/-!
# A205996: Number of (n+1)X7 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205996, there is no canonical definition to state claims against.
-/

/-! ## A205996.P15996104597300776743

`A205998(A374007(n+1))`
-/

namespace A205996.P15996104597300776743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A374007 (n + 1)).toNat

end

end A205996.P15996104597300776743

/-! ## A205996.P9339749526942741831

`A205998(eq[7, A131818(n+1)])`
-/

namespace A205996.P9339749526942741831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205996.P9339749526942741831

/-! ## A205996.P8293798141843096214

`A205998(A052905(n+3))`
-/

namespace A205996.P8293798141843096214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A052905 (n + 3)).toNat

end

end A205996.P8293798141843096214

/-! ## A205996.P1693616138553169381

`A205998(eq[5, A193592(n)])`
-/

namespace A205996.P1693616138553169381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205996.P1693616138553169381

/-! ## A205996.P3790256366126947128

`A205998(eq[7, A049286(n+1)])`
-/

namespace A205996.P3790256366126947128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205996.P3790256366126947128

/-!
# A205997: Number of (n+1)X8 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205997, there is no canonical definition to state claims against.
-/

/-! ## A205997.P14442280551508235454

`A205998(A374008(n+1))`
-/

namespace A205997.P14442280551508235454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A374008 (n + 1)).toNat

end

end A205997.P14442280551508235454

/-! ## A205997.P8081982299694286753

`A205998(A167487(n+5))`
-/

namespace A205997.P8081982299694286753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A167487 (n + 5)).toNat

end

end A205997.P8081982299694286753

/-! ## A205997.P17655499202321890800

`A205998(eq[11, A066657(n)])`
-/

namespace A205997.P17655499202321890800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205997.P17655499202321890800

/-! ## A205997.P13145590573920648185

`A205998(eq[8, A131818(n+1)])`
-/

namespace A205997.P13145590573920648185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205997.P13145590573920648185

/-! ## A205997.P8000730099331722991

`A205998(A055999(n+4))`
-/

namespace A205997.P8000730099331722991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205998 (A055999 (n + 4)).toNat

end

end A205997.P8000730099331722991

/-!
# A205998: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the number of clockwise edge increases in every 2X2 subblock equal to two, and every 2X2 determinant nonzero.

The programs for A205998, there is no canonical definition to state claims against.
-/

/-! ## A205998.P14444654113635889041

`A206128(n+1)-A206010(n+1)`
-/

namespace A205998.P14444654113635889041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206128 (n + 1) - A206010 (n + 1)

end

end A205998.P14444654113635889041

/-!
# A205999: Inverse Euler transform of A195980.

The programs for A205999, there is no canonical definition to state claims against.
-/

/-! ## A205999.P9738225895512726887

`A336557(A368830(n)+1)-1`
-/

namespace A205999.P9738225895512726887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336557 (A368830 n + 1).toNat - 1

end

end A205999.P9738225895512726887

/-! ## A205999.P6419880371642151257

`A324692(A001045(n))+A210567(n)`
-/

namespace A205999.P6419880371642151257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A001045 n).toNat + A210567 n

end

end A205999.P6419880371642151257

/-! ## A205999.P635913631400573922

`A055775(n)-A137579(A000384(n))`
-/

namespace A205999.P635913631400573922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055775 n - A137579 (A000384 n).toNat

end

end A205999.P635913631400573922

/-! ## A205999.P7973031453167465111

`or(A151256(n), A294929(A001710(n)))`
-/

namespace A205999.P7973031453167465111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151256 n) (A294929 (A001710 n).toNat)

end

end A205999.P7973031453167465111

