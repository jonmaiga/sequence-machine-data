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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A155400: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,1 4,2 5,2 6,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155400, there is no canonical definition to state claims against.
-/

/-! ## A155400.P5189931210185163831

`A064802(A018598(3*n+2)-A246352(n+1))`
-/

namespace A155400.P5189931210185163831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064802 (A018598 (3 * n + 2) - A246352 (n + 1)).toNat

end

end A155400.P5189931210185163831

/-!
# A155401: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,1 5,2 6,2 7,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155401, there is no canonical definition to state claims against.
-/

/-! ## A155401.P4184541470510369074

`A229848(ceil(47^(n/4)))`
-/

namespace A155401.P4184541470510369074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229848 ⌈(47 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌉.toNat

end

end A155401.P4184541470510369074

/-!
# A155402: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 5,3 5,4 5,5 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155402, there is no canonical definition to state claims against.
-/

/-! ## A155402.P17377324247087323046

`A155337(n+4)+A051516(A155332(n+6)+1)`
-/

namespace A155402.P17377324247087323046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155337 (n + 4) + A051516 (A155332 (n + 6) + 1).toNat

end

end A155402.P17377324247087323046

/-!
# A155403: Number of ways to place zero or more nonadjacent 0,0 1,0 2,0 3,1 4,2 5,3 6,3 7,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155403, there is no canonical definition to state claims against.
-/

/-! ## A155403.P4381894938189202444

`A244606(A108304(n))+A155427(n+7)`
-/

namespace A155403.P4381894938189202444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A108304 n).toNat + A155427 (n + 7)

end

end A155403.P4381894938189202444

/-! ## A155403.P814830000158770775

`A244606(A192126(n))+A155427(n+7)`
-/

namespace A155403.P814830000158770775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A192126 n).toNat + A155427 (n + 7)

end

end A155403.P814830000158770775

/-!
# A155405: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 3,3 4,1 4,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155405, there is no canonical definition to state claims against.
-/

/-! ## A155405.P970468807702758721

`A006530(or(1, ∑[6*n])*A186426(3*n+5))`
-/

namespace A155405.P970468807702758721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A186426 (3 * n + 5)).toNat

end

end A155405.P970468807702758721

/-! ## A155405.P15953730163776548811

`A238662(A000111(n))+A003215(n)`
-/

namespace A155405.P15953730163776548811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238662 (A000111 n).toNat + A003215 n

end

end A155405.P15953730163776548811

/-!
# A155407: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 2,2 3,1 3,2 4,3 4,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155407, there is no canonical definition to state claims against.
-/

/-! ## A155407.P3820527206672337107

`A379842(A320235(n))`
-/

namespace A155407.P3820527206672337107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379842 (A320235 n).toNat

end

end A155407.P3820527206672337107

/-! ## A155407.P2387296819024553837

`A329395(A296551(n+2))`
-/

namespace A155407.P2387296819024553837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A296551 (n + 2)).toNat

end

end A155407.P2387296819024553837

/-!
# A155408: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 2,2 3,1 3,2 4,3 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155408, there is no canonical definition to state claims against.
-/

/-! ## A155408.P8466687417370914094

`Δ[A294317(A000041(∑[2*n]+3))]`
-/

namespace A155408.P8466687417370914094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A000041 (∑ j ∈ Finset.range (n + 1), f2 j + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155408.P8466687417370914094

/-!
# A155410: Number of ways to place zero or more nonadjacent 1,0 1,1 2,1 3,2 3,3 4,2 5,2 5,3 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155410, there is no canonical definition to state claims against.
-/

/-! ## A155410.P8037871066369350042

`or(A001222(A215541(n)), A155425(n+6))`
-/

namespace A155410.P8037871066369350042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A215541 n).toNat) (A155425 (n + 6))

end

end A155410.P8037871066369350042

/-! ## A155410.P1373968446824564091

`or(A155425(n+6), A336739(A001006(n)))`
-/

namespace A155410.P1373968446824564091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155425 (n + 6)) (A336739 (A001006 n).toNat)

end

end A155410.P1373968446824564091

/-!
# A155411: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 3,2 4,1 5,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155411, there is no canonical definition to state claims against.
-/

/-! ## A155411.P14409483262492364362

`A224226(A155424(n+6))+A155440(n+5)`
-/

namespace A155411.P14409483262492364362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224226 (A155424 (n + 6)).toNat + A155440 (n + 5)

end

end A155411.P14409483262492364362

/-!
# A155412: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 3,2 4,3 5,2 5,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155412, there is no canonical definition to state claims against.
-/

/-! ## A155412.P70866433273226608

`A357357(A031150(n+1))+A050613(2*n)`
-/

namespace A155412.P70866433273226608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357357 (A031150 (n + 1)).toNat + A050613 (2 * n)

end

end A155412.P70866433273226608

/-! ## A155412.P4106059414030200695

`A155420(n+6)-A279948(A155354(n+6))`
-/

namespace A155412.P4106059414030200695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155420 (n + 6) - A279948 (A155354 (n + 6)).toNat

end

end A155412.P4106059414030200695

/-!
# A155414: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,0 3,1 4,0 5,1 6,1 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155414, there is no canonical definition to state claims against.
-/

/-! ## A155414.P6509858662238005044

`A155374(n+5)-A324163(A084961(n+1))`
-/

namespace A155414.P6509858662238005044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155374 (n + 5) - A324163 (A084961 (n + 1)).toNat

end

end A155414.P6509858662238005044

/-!
# A155415: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,0 3,1 4,2 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155415, there is no canonical definition to state claims against.
-/

/-! ## A155415.P1874088963462209860

`A054404(n+1)+A022290(A026653(n+2))`
-/

namespace A155415.P1874088963462209860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (n + 1) + A022290 (A026653 (n + 2)).toNat

end

end A155415.P1874088963462209860

/-!
# A155416: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 3,2 4,2 5,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155416, there is no canonical definition to state claims against.
-/

/-! ## A155416.P10235088704339052356

`or(A005423(A028378(n)), A155417(n+6))`
-/

namespace A155416.P10235088704339052356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005423 (A028378 n).toNat) (A155417 (n + 6))

end

end A155416.P10235088704339052356

/-! ## A155416.P16609404734908548437

`A028310(or(A018062(n), A155417(n+6)))`
-/

namespace A155416.P16609404734908548437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A018062 n) (A155417 (n + 6))).toNat

end

end A155416.P16609404734908548437

/-! ## A155416.P17688885656269193710

`or(A123730(A002531(n)), A155417(n+6))`
-/

namespace A155416.P17688885656269193710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123730 (A002531 n).toNat) (A155417 (n + 6))

end

end A155416.P17688885656269193710

/-!
# A155417: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 3,2 4,2 5,3 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155417, there is no canonical definition to state claims against.
-/

/-! ## A155417.P14178578622976191833

`A155416(n+6)-A183063(A155424(n+5))`
-/

namespace A155417.P14178578622976191833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155416 (n + 6) - A183063 (A155424 (n + 5)).toNat

end

end A155417.P14178578622976191833

/-!
# A155418: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,1 5,0 5,1 6,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155418, there is no canonical definition to state claims against.
-/

/-! ## A155418.P4212837757812777453

`A349122(A318920(n+1))+A000193(n+1)`
-/

namespace A155418.P4212837757812777453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (A318920 (n + 1)).toNat + A000193 (n + 1)

end

end A155418.P4212837757812777453

/-! ## A155418.P1903920435848463531

`A152682(∑[A014665(n+1)])+A152665(n+1)`
-/

namespace A155418.P1903920435848463531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A152665 (n + 1)

end

end A155418.P1903920435848463531

/-!
# A155419: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,1 5,1 6,2 7,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155419, there is no canonical definition to state claims against.
-/

/-! ## A155419.P10004603677468129033

`∑[record[gcd(n, A299893(n+1))]]`
-/

namespace A155419.P10004603677468129033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A299893 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155419.P10004603677468129033

/-!
# A155422: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 4,1 5,2 6,1 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155422, there is no canonical definition to state claims against.
-/

/-! ## A155422.P12709100760554084803

`A275511(A253098(n))`
-/

namespace A155422.P12709100760554084803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275511 (A253098 n).toNat

end

end A155422.P12709100760554084803

/-!
# A155423: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,1 4,2 5,2 6,3 7,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155423, there is no canonical definition to state claims against.
-/

/-! ## A155423.P17691126726846606102

`A278149(a(n-1))²+3` with `a(0)=1`
-/

namespace A155423.P17691126726846606102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A278149 (a (n - 1)).toNat ^ 2 + 3

end

end A155423.P17691126726846606102

/-!
# A155424: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 4,3 4,4 5,3 5,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155424, there is no canonical definition to state claims against.
-/

/-! ## A155424.P7594961008825774990

`∑[record[A278085(A236392(n+1))]]`
-/

namespace A155424.P7594961008825774990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278085 (A236392 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155424.P7594961008825774990

/-!
# A155425: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 3,3 4,2 5,2 6,3 polyhexes in any orientation on a planar n X n X n triangular grid.

The programs for A155425, there is no canonical definition to state claims against.
-/

/-! ## A155425.P17566411005362020555

`A155410(n+5)-A165738(A155409(n+5))`
-/

namespace A155425.P17566411005362020555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155410 (n + 5) - A165738 (A155409 (n + 5)).toNat

end

end A155425.P17566411005362020555

/-!
# A155426: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,0 4,1 4,2 5,0 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155426, there is no canonical definition to state claims against.
-/

/-! ## A155426.P1409521660471272934

`∑[ceil(sqrt(A297419(3*n+1)))]`
-/

namespace A155426.P1409521660471272934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A297419 (3 * n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155426.P1409521660471272934

/-! ## A155426.P1771461560770274065

`a(n-1)+A191923(a(n-1))+3` with `a(0)=1`
-/

namespace A155426.P1771461560770274065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A191923 (a (n - 1)).toNat + 3)

end

end A155426.P1771461560770274065

/-!
# A155427: Number of ways to place zero or more nonadjacent 0,0 1,0 2,1 3,2 4,2 5,3 6,4 7,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155427, there is no canonical definition to state claims against.
-/

/-! ## A155427.P8870968842537142284

`A155403(n+7)-A244606(A108304(n))`
-/

namespace A155427.P8870968842537142284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155403 (n + 7) - A244606 (A108304 n).toNat

end

end A155427.P8870968842537142284

/-! ## A155427.P2591565563981502582

`A155403(n+7)-A244606(A192126(n))`
-/

namespace A155427.P2591565563981502582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155403 (n + 7) - A244606 (A192126 n).toNat

end

end A155427.P2591565563981502582

/-!
# A155428: Number of ways to place zero or more nonadjacent 1,1 2,0 2,1 3,2 4,3 5,4 5,5 6,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155428, there is no canonical definition to state claims against.
-/

/-! ## A155428.P7977279598065864157

`A191926(A289153(n))`
-/

namespace A155428.P7977279598065864157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191926 (A289153 n).toNat

end

end A155428.P7977279598065864157

/-! ## A155428.P6587426944037118340

`A296007(A062709(n))+A018834(n+1)`
-/

namespace A155428.P6587426944037118340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296007 (A062709 n).toNat + A018834 (n + 1)

end

end A155428.P6587426944037118340

/-!
# A155429: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 3,1 4,2 5,3 6,2 6,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155429, there is no canonical definition to state claims against.
-/

/-! ## A155429.P8048303338343522744

`or(A113221(A000908(n)), A155395(n+6))`
-/

namespace A155429.P8048303338343522744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113221 (A000908 n).toNat) (A155395 (n + 6))

end

end A155429.P8048303338343522744

/-! ## A155429.P15746373320374090816

`A155431(n+5)-A001519(n)*A185284(A001519(n))`
-/

namespace A155429.P15746373320374090816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155431 (n + 5) - A001519 n * A185284 (A001519 n).toNat

end

end A155429.P15746373320374090816

/-!
# A155431: Number of ways to place zero or more nonadjacent 2,0 2,1 3,0 3,1 3,2 3,3 4,1 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155431, there is no canonical definition to state claims against.
-/

/-! ## A155431.P11461398620042533550

`A185284(A143689(n))+A155346(n+5)`
-/

namespace A155431.P11461398620042533550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A143689 n).toNat + A155346 (n + 5)

end

end A155431.P11461398620042533550

/-! ## A155431.P3979611944115897224

`A155398(n+6)+A004198(A000681(n))`
-/

namespace A155431.P3979611944115897224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155398 (n + 6) + A004198 (A000681 n).toNat

end

end A155431.P3979611944115897224

/-!
# A155433: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,2 3,0 3,3 4,1 4,3 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155433, there is no canonical definition to state claims against.
-/

/-! ## A155433.P13940567648370420081

`A146663(A146659(n+1))+3*n²`
-/

namespace A155433.P13940567648370420081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (A146659 (n + 1)).toNat + (3 * n ^ 2 : ℤ)

end

end A155433.P13940567648370420081

/-! ## A155433.P16892529977227450345

`A146663(A146683(n+1))+3*n²`
-/

namespace A155433.P16892529977227450345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (A146683 (n + 1)).toNat + (3 * n ^ 2 : ℤ)

end

end A155433.P16892529977227450345

/-! ## A155433.P12402811651381490937

`A146663(A146685(n+1))+3*n²`
-/

namespace A155433.P12402811651381490937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146663 (A146685 (n + 1)).toNat + (3 * n ^ 2 : ℤ)

end

end A155433.P12402811651381490937

/-!
# A155434: Number of ways to place zero or more nonadjacent 1,0 1,1 2,0 2,2 3,0 4,0 5,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155434, there is no canonical definition to state claims against.
-/

/-! ## A155434.P8973152013532461952

`∑[A308838(3*n+1)-A000043(n+1)]`
-/

namespace A155434.P8973152013532461952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308838 (3 * n + 1) - A000043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155434.P8973152013532461952

/-! ## A155434.P2079062657032500561

`A343344(A003945(n))+A003215(n)`
-/

namespace A155434.P2079062657032500561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343344 (A003945 n).toNat + A003215 n

end

end A155434.P2079062657032500561

/-!
# A155435: Number of ways to place zero or more nonadjacent 2,1 2,2 3,0 3,1 3,3 4,2 4,3 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155435, there is no canonical definition to state claims against.
-/

/-! ## A155435.P6451519698123181892

`A330060(A301180(n))`
-/

namespace A155435.P6451519698123181892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A301180 n).toNat

end

end A155435.P6451519698123181892

/-! ## A155435.P14301384289510878063

`A249474(A174706(n+1)²)+3*n²`
-/

namespace A155435.P14301384289510878063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249474 (A174706 (n + 1) ^ 2).toNat + (3 * n ^ 2 : ℤ)

end

end A155435.P14301384289510878063

/-!
# A155438: Number of ways to place zero or more nonadjacent 2,1 2,2 3,1 4,0 4,1 5,2 6,3 6,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155438, there is no canonical definition to state claims against.
-/

/-! ## A155438.P17583516775635167205

`A118759(A271123(n))+A002487(n)`
-/

namespace A155438.P17583516775635167205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A271123 n).toNat + A002487 n

end

end A155438.P17583516775635167205

/-! ## A155438.P9219619322748595686

`A000267(A175094(n+1)*A175095(3*n+1))`
-/

namespace A155438.P9219619322748595686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A175094 (n + 1) * A175095 (3 * n + 1)).toNat

end

end A155438.P9219619322748595686

/-!
# A155439: Number of ways to place zero or more nonadjacent 2,1 2,2 3,0 3,1 4,2 4,3 5,1 5,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155439, there is no canonical definition to state claims against.
-/

/-! ## A155439.P3775250361970382601

`A155441(A029966(n+3)+3)`
-/

namespace A155439.P3775250361970382601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155441 (A029966 (n + 3) + 3).toNat

end

end A155439.P3775250361970382601

/-! ## A155439.P3432453414979382552

`A155441(n+5)*A155457(A008592(n+1))`
-/

namespace A155439.P3432453414979382552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155441 (n + 5) * A155457 (A008592 (n + 1)).toNat

end

end A155439.P3432453414979382552

/-! ## A155439.P13588896613280124182

`A155441(n+5)^A155457(A384094(n+4))`
-/

namespace A155439.P13588896613280124182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155441 (n + 5) : ℚ) ^ (A155457 (A384094 (n + 4)).toNat : ℤ)

end

end A155439.P13588896613280124182

/-! ## A155439.P15929410344067859735

`A155441(n+5)*A155457(A155478(3*n+4))`
-/

namespace A155439.P15929410344067859735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155441 (n + 5) * A155457 (A155478 (3 * n + 4)).toNat

end

end A155439.P15929410344067859735

/-!
# A155440: Number of ways to place zero or more nonadjacent 1,0 2,0 2,2 3,0 3,2 4,1 4,2 5,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155440, there is no canonical definition to state claims against.
-/

/-! ## A155440.P8634219831542642646

`A155411(n+5)-A224226(A155424(n+6))`
-/

namespace A155440.P8634219831542642646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155411 (n + 5) - A224226 (A155424 (n + 6)).toNat

end

end A155440.P8634219831542642646

/-!
# A155442: Number of ways to place zero or more nonadjacent 1,0 2,0 2,2 3,1 3,2 4,1 5,1 6,1 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155442, there is no canonical definition to state claims against.
-/

/-! ## A155442.P10535940793126094584

`A155370(n+5)+A010676(A250707(n+1))`
-/

namespace A155442.P10535940793126094584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155370 (n + 5) + A010676 (A250707 (n + 1)).toNat

end

end A155442.P10535940793126094584

/-!
# A155443: Number of ways to place zero or more nonadjacent 2,1 3,0 3,1 4,2 4,3 4,4 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155443, there is no canonical definition to state claims against.
-/

/-! ## A155443.P2477172031007451004

`A051767(A000111(n))+A003215(n)`
-/

namespace A155443.P2477172031007451004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051767 (A000111 n).toNat + A003215 n

end

end A155443.P2477172031007451004

/-! ## A155443.P8109992262050097548

`A057353(A057331(n)+A033996(n))`
-/

namespace A155443.P8109992262050097548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A057331 n + A033996 n).toNat

end

end A155443.P8109992262050097548

/-!
# A155444: Number of ways to place zero or more nonadjacent 2,0 3,0 4,1 4,2 4,3 4,4 5,1 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155444, there is no canonical definition to state claims against.
-/

/-! ## A155444.P8655390659861088945

`A241832(floor(n!/(n+1)))+A003215(n)`
-/

namespace A155444.P8655390659861088945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241832 ⌊(Nat.factorial n : ℚ) / (n + 1 : ℚ)⌋.toNat + A003215 n

end

end A155444.P8655390659861088945

/-! ## A155444.P6000565934596030157

`A241832(abs(ceil(n!/(n-1-2*n))))+A003215(n)`
-/

namespace A155444.P6000565934596030157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241832 |⌈(Nat.factorial n : ℚ) / ((n : ℤ) - 1 - (2 * n : ℤ) : ℚ)⌉|.toNat + A003215 n

end

end A155444.P6000565934596030157

/-!
# A155445: Number of ways to place zero or more nonadjacent 1,0 2,1 2,2 3,1 3,3 4,2 4,3 5,4 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155445, there is no canonical definition to state claims against.
-/

/-! ## A155445.P11124660055598861355

`xor(1, A107975(a(n-1)))` with `a(0)=1`
-/

namespace A155445.P11124660055598861355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (A107975 (a (n - 1)).toNat)

end

end A155445.P11124660055598861355

/-! ## A155445.P12257370772692100155

`∑[record[A215089(A041251(n))]]`
-/

namespace A155445.P12257370772692100155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215089 (A041251 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155445.P12257370772692100155

/-!
# A155446: Number of ways to place zero or more nonadjacent 2,0 3,1 3,2 4,1 4,3 4,4 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155446, there is no canonical definition to state claims against.
-/

/-! ## A155446.P2150326284890476144

`A155448(n+7)%A155463(2*(n+1))`
-/

namespace A155446.P2150326284890476144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155448 (n + 7)) (A155463 (2 * (n + 1)))

end

end A155446.P2150326284890476144

/-! ## A155446.P6076059856006401108

`A364839(A326856(n))+A003215(n)`
-/

namespace A155446.P6076059856006401108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 (A326856 n).toNat + A003215 n

end

end A155446.P6076059856006401108

/-!
# A155447: Number of ways to place zero or more nonadjacent 2,0 3,1 3,2 4,2 4,3 4,4 5,2 6,2 polyhexes in any orientation on a planar nXnXn triangular grid.

The programs for A155447, there is no canonical definition to state claims against.
-/

/-! ## A155447.P3732326511255280313

`A047679(A000225(n)*A061242(n+1))`
-/

namespace A155447.P3732326511255280313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A000225 n * A061242 (n + 1)).toNat

end

end A155447.P3732326511255280313

/-! ## A155447.P3663735335939428284

`A047679(lcm(A000225(n), A061242(n+1)))`
-/

namespace A155447.P3663735335939428284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (Int.lcm (A000225 n) (A061242 (n + 1)))

end

end A155447.P3663735335939428284

/-!
# A155449: Numbers k == 6 or 11 (mod 17).

The programs for A155449, the canonical program `A155449.P8769006505933984622` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155449 has offset 1).

The definition of A155449 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155449.P3062923577804260249

`ogf((6+5x+6x^2)/(1-x-x^2+x^3))`
-/

namespace A155449.P3062923577804260249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 5, 6] [1, -1, -1, 1] n

end

end A155449.P3062923577804260249

namespace A155449

/-- `ogf((6+5x+6x^2)/(1-x-x^2+x^3))` -/
def P3062923577804260249.Spec : Prop :=
  ∀ n, P3062923577804260249.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P8769006505933984622

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=6, a(1)=11, a(2)=23`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155449

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P8769006505933984622.Spec : Prop :=
  ∀ n, P8769006505933984622.a n = A155449 (n + 1)

theorem P8769006505933984622.correct : P8769006505933984622.Spec := by
  intro n
  simp only [A155449, Nat.add_sub_cancel]

end A155449

/-! ## A155449.P3587017902168375447

`a(n-2)+17` with `a(0)=6, a(1)=11`
-/

namespace A155449.P3587017902168375447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 11] fun n a =>
  a (n - 2) + 17

end

end A155449.P3587017902168375447

namespace A155449

/-- `a(n-2)+17` -/
def P3587017902168375447.Spec : Prop :=
  ∀ n, (P3587017902168375447.a n : ℤ) = A155449 (n + 1)

end A155449

/-! ## A155449.P13967892881662680231

`∑[17-a(n-1)]` with `a(0)=6, a(1)=5`
-/

namespace A155449.P13967892881662680231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  17 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155449.P13967892881662680231

namespace A155449

/-- `∑[17-a(n-1)]` -/
def P13967892881662680231.Spec : Prop :=
  ∀ n, P13967892881662680231.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P1593759246261001155

`17*n-a(n-1)` with `a(0)=6`
-/

namespace A155449.P1593759246261001155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (17 * n : ℤ) - a (n - 1)

end

end A155449.P1593759246261001155

namespace A155449

/-- `17*n-a(n-1)` -/
def P1593759246261001155.Spec : Prop :=
  ∀ n, P1593759246261001155.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P8346995677858399681

`∑[∑[ogf((6+5x+6x^2)/(1+x))]]`
-/

namespace A155449.P8346995677858399681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 5, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155449.P8346995677858399681

namespace A155449

/-- `∑[∑[ogf((6+5x+6x^2)/(1+x))]]` -/
def P8346995677858399681.Spec : Prop :=
  ∀ n, P8346995677858399681.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P8086721130488835508

`∑[A010137(2*n)]`
-/

namespace A155449.P8086721130488835508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010137 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155449.P8086721130488835508

namespace A155449

/-- `∑[A010137(2*n)]` -/
def P8086721130488835508.Spec : Prop :=
  ∀ n, P8086721130488835508.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P12147188988904281960

`∑[or(4, A040041(n))]`
-/

namespace A155449.P12147188988904281960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A040041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155449.P12147188988904281960

namespace A155449

/-- `∑[or(4, A040041(n))]` -/
def P12147188988904281960.Spec : Prop :=
  ∀ n, P12147188988904281960.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P9947620266122897703

`∑[A040043(n)-2]+1`
-/

namespace A155449.P9947620266122897703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040043 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A155449.P9947620266122897703

namespace A155449

/-- `∑[A040043(n)-2]+1` -/
def P9947620266122897703.Spec : Prop :=
  ∀ n, P9947620266122897703.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P4233152261494242434

`∑[A121844(a(n-1))]` with `a(0)=6`
-/

namespace A155449.P4233152261494242434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A121844 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155449.P4233152261494242434

namespace A155449

/-- `∑[A121844(a(n-1))]` -/
def P4233152261494242434.Spec : Prop :=
  ∀ n, P4233152261494242434.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P2438310428911802759

`∑[A040021(n)]+or(1, n)`
-/

namespace A155449.P2438310428911802759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.lor 1 n : ℤ)

end

end A155449.P2438310428911802759

namespace A155449

/-- `∑[A040021(n)]+or(1, n)` -/
def P2438310428911802759.Spec : Prop :=
  ∀ n, P2438310428911802759.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P9885410947636347599

`A168332(n+1)+5*n`
-/

namespace A155449.P9885410947636347599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168332 (n + 1) + (5 * n : ℤ)

end

end A155449.P9885410947636347599

namespace A155449

/-- `A168332(n+1)+5*n` -/
def P9885410947636347599.Spec : Prop :=
  ∀ n, P9885410947636347599.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P14853860420199676859

`A155086(n+1)+Δ[n²]`
-/

namespace A155449.P14853860420199676859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A155449.P14853860420199676859

namespace A155449

/-- `A155086(n+1)+Δ[n²]` -/
def P14853860420199676859.Spec : Prop :=
  ∀ n, P14853860420199676859.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P8205373356342220973

`A089644(n+1)-Δ[n²]`
-/

namespace A155449.P8205373356342220973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A155449.P8205373356342220973

namespace A155449

/-- `A089644(n+1)-Δ[n²]` -/
def P8205373356342220973.Spec : Prop :=
  ∀ n, P8205373356342220973.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P5592890102149560374

`∑[lcm(7, A280193(n))-2]+1`
-/

namespace A155449.P5592890102149560374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 7 (A280193 n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A155449.P5592890102149560374

namespace A155449

/-- `∑[lcm(7, A280193(n))-2]+1` -/
def P5592890102149560374.Spec : Prop :=
  ∀ n, P5592890102149560374.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P14971226230844162617

`A156638(n+1)+4*n+2`
-/

namespace A155449.P14971226230844162617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (n + 1) + (4 * n + 2 : ℤ)

end

end A155449.P14971226230844162617

namespace A155449

/-- `A156638(n+1)+4*n+2` -/
def P14971226230844162617.Spec : Prop :=
  ∀ n, P14971226230844162617.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P10669513382200037183

`∑[(val(A266256(n), 2)+3)²-4]+1`
-/

namespace A155449.P10669513382200037183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.valuation (A266256 n).toNat 2 + 3) ^ 2 : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A155449.P10669513382200037183

namespace A155449

/-- `∑[(val(A266256(n), 2)+3)²-4]+1` -/
def P10669513382200037183.Spec : Prop :=
  ∀ n, P10669513382200037183.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P13019018685257075844

`A212161(n)+A000035(n)`
-/

namespace A155449.P13019018685257075844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 n + A000035 n

end

end A155449.P13019018685257075844

namespace A155449

/-- `A212161(n)+A000035(n)` -/
def P13019018685257075844.Spec : Prop :=
  ∀ n, P13019018685257075844.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P1858624750874777571

`A106387(n+1)+A016789(n)`
-/

namespace A155449.P1858624750874777571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106387 (n + 1) + A016789 n

end

end A155449.P1858624750874777571

namespace A155449

/-- `A106387(n+1)+A016789(n)` -/
def P1858624750874777571.Spec : Prop :=
  ∀ n, P1858624750874777571.a n = A155449 (n + 1)

end A155449

/-! ## A155449.P6888318848395963921

`A151978(n+1)+A010726(n)`
-/

namespace A155449.P6888318848395963921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (n + 1) + A010726 n

end

end A155449.P6888318848395963921

namespace A155449

/-- `A151978(n+1)+A010726(n)` -/
def P6888318848395963921.Spec : Prop :=
  ∀ n, P6888318848395963921.a n = A155449 (n + 1)

end A155449

/-!
# A155450: Numbers congruent to 5 or 18 mod 23.

The programs for A155450, the canonical program `A155450.P15943188767118962272` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155450 has offset 1).

The definition of A155450 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A155450.anchor (n : ℕ) (hn : 1 ≤ n) : A155450 n = (Nat.nth (fun k => k % 23 ∈ ({5, 18} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A155.A155450`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155450.P4793772962481479591

`ogf((5+13x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A155450.P4793772962481479591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 13, 5] [1, -1, -1, 1] n

end

end A155450.P4793772962481479591

namespace A155450

/-- `ogf((5+13x+5x^2)/(1-x-x^2+x^3))` -/
def P4793772962481479591.Spec : Prop :=
  ∀ n, P4793772962481479591.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P15943188767118962272

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=5, a(1)=18, a(2)=28`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155450

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P15943188767118962272.Spec : Prop :=
  ∀ n, P15943188767118962272.a n = A155450 (n + 1)

theorem P15943188767118962272.correct : P15943188767118962272.Spec := by
  intro n
  simp only [A155450, Nat.add_sub_cancel]

end A155450

/-! ## A155450.P11419126113221933511

`a(n-2)+23` with `a(0)=5, a(1)=18`
-/

namespace A155450.P11419126113221933511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n a =>
  a (n - 2) + 23

end

end A155450.P11419126113221933511

namespace A155450

/-- `a(n-2)+23` -/
def P11419126113221933511.Spec : Prop :=
  ∀ n, (P11419126113221933511.a n : ℤ) = A155450 (n + 1)

end A155450

/-! ## A155450.P12958137537110405201

`∑[23-a(n-1)]` with `a(0)=5, a(1)=13`
-/

namespace A155450.P12958137537110405201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 13] fun n f1 =>
  23 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155450.P12958137537110405201

namespace A155450

/-- `∑[23-a(n-1)]` -/
def P12958137537110405201.Spec : Prop :=
  ∀ n, P12958137537110405201.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P7951519197728347824

`23*n-a(n-1)` with `a(0)=5`
-/

namespace A155450.P7951519197728347824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (23 * n : ℤ) - a (n - 1)

end

end A155450.P7951519197728347824

namespace A155450

/-- `23*n-a(n-1)` -/
def P7951519197728347824.Spec : Prop :=
  ∀ n, P7951519197728347824.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P8329790353784798252

`12*n+6-ceil(xor(1, n)/2)`
-/

namespace A155450.P8329790353784798252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 6 : ℤ) - ⌈(Nat.xor 1 n : ℚ) / 2⌉

end

end A155450.P8329790353784798252

namespace A155450

/-- `12*n+6-ceil(xor(1, n)/2)` -/
def P8329790353784798252.Spec : Prop :=
  ∀ n, P8329790353784798252.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P16105332325547655769

`3*round(n/2)+5*(2*n+1)`
-/

namespace A155450.P16105332325547655769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway ((n : ℚ) / 2) + (5 * (2 * n + 1) : ℤ)

end

end A155450.P16105332325547655769

namespace A155450

/-- `3*round(n/2)+5*(2*n+1)` -/
def P16105332325547655769.Spec : Prop :=
  ∀ n, P16105332325547655769.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P13745560180452379652

`abs(ceil(xor(1, n)/2)-A017593(n))`
-/

namespace A155450.P13745560180452379652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(Nat.xor 1 n : ℚ) / 2⌉ - A017593 n|

end

end A155450.P13745560180452379652

namespace A155450

/-- `abs(ceil(xor(1, n)/2)-A017593(n))` -/
def P13745560180452379652.Spec : Prop :=
  ∀ n, P13745560180452379652.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P17206807338171496708

`(A090771(n+1)+Δ[(3*n)²])/2`
-/

namespace A155450.P17206807338171496708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090771 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 2

end

end A155450.P17206807338171496708

namespace A155450

/-- `(A090771(n+1)+Δ[(3*n)²])/2` -/
def P17206807338171496708.Spec : Prop :=
  ∀ n, P17206807338171496708.a n = (A155450 (n + 1) : ℚ)

end A155450

/-! ## A155450.P11560549710222119767

`∑[or(A040012(n), A040021(n))]`
-/

namespace A155450.P11560549710222119767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040012 n) (A040021 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155450.P11560549710222119767

namespace A155450

/-- `∑[or(A040012(n), A040021(n))]` -/
def P11560549710222119767.Spec : Prop :=
  ∀ n, P11560549710222119767.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P17741290127662190558

`∑[2*A040012(n)-A040007(n)]`
-/

namespace A155450.P17741290127662190558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040012 n - A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155450.P17741290127662190558

namespace A155450

/-- `∑[2*A040012(n)-A040007(n)]` -/
def P17741290127662190558.Spec : Prop :=
  ∀ n, P17741290127662190558.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P6218914868275820208

`(A164135(n+1)-A152833(n))/2`
-/

namespace A155450.P6218914868275820208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164135 (n + 1) - A152833 n : ℚ) / 2

end

end A155450.P6218914868275820208

namespace A155450

/-- `(A164135(n+1)-A152833(n))/2` -/
def P6218914868275820208.Spec : Prop :=
  ∀ n, P6218914868275820208.a n = (A155450 (n + 1) : ℚ)

end A155450

/-! ## A155450.P3609654141807416787

`A002798(n+1)%A358053(n+1)`
-/

namespace A155450.P3609654141807416787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002798 (n + 1)) (A358053 (n + 1))

end

end A155450.P3609654141807416787

namespace A155450

/-- `A002798(n+1)%A358053(n+1)` -/
def P3609654141807416787.Spec : Prop :=
  ∀ n, P3609654141807416787.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P7798531378288144495

`A072150(A063289(n+3))`
-/

namespace A155450.P7798531378288144495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072150 (A063289 (n + 3)).toNat

end

end A155450.P7798531378288144495

namespace A155450

/-- `A072150(A063289(n+3))` -/
def P7798531378288144495.Spec : Prop :=
  ∀ n, P7798531378288144495.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P4265412950586269417

`A313506(A047209(n+1))`
-/

namespace A155450.P4265412950586269417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 (A047209 (n + 1)).toNat

end

end A155450.P4265412950586269417

namespace A155450

/-- `A313506(A047209(n+1))` -/
def P4265412950586269417.Spec : Prop :=
  ∀ n, P4265412950586269417.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P10149857108808155151

`A314381(A007310(n+1))`
-/

namespace A155450.P10149857108808155151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314381 (A007310 (n + 1)).toNat

end

end A155450.P10149857108808155151

namespace A155450

/-- `A314381(A007310(n+1))` -/
def P10149857108808155151.Spec : Prop :=
  ∀ n, P10149857108808155151.a n = A155450 (n + 1)

end A155450

/-! ## A155450.P7978195710422886018

`eq[A070551(n), A329505(n)]`
-/

namespace A155450.P7978195710422886018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329505 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155450.P7978195710422886018

namespace A155450

/-- `eq[A070551(n), A329505(n)]` -/
def P7978195710422886018.Spec : Prop :=
  ∀ n, (P7978195710422886018.a n : ℤ) = A155450 (n + 1)

end A155450

/-! ## A155450.P4786049683295609717

`eq[A070551(n), A329509(n)]`
-/

namespace A155450.P4786049683295609717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329509 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155450.P4786049683295609717

namespace A155450

/-- `eq[A070551(n), A329509(n)]` -/
def P4786049683295609717.Spec : Prop :=
  ∀ n, (P4786049683295609717.a n : ℤ) = A155450 (n + 1)

end A155450

/-! ## A155450.P9783279180291386561

`eq[A070646(n), A329507(n)]`
-/

namespace A155450.P9783279180291386561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329507 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155450.P9783279180291386561

namespace A155450

/-- `eq[A070646(n), A329507(n)]` -/
def P9783279180291386561.Spec : Prop :=
  ∀ n, (P9783279180291386561.a n : ℤ) = A155450 (n + 1)

end A155450

/-! ## A155450.P9285007704607309744

`eq[A070646(n), A329513(n)]`
-/

namespace A155450.P9285007704607309744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155450.P9285007704607309744

namespace A155450

/-- `eq[A070646(n), A329513(n)]` -/
def P9285007704607309744.Spec : Prop :=
  ∀ n, (P9285007704607309744.a n : ℤ) = A155450 (n + 1)

end A155450

/-!
# A155451: Triangle read by rows: T(n,m)=2*Binomial[n, m] - (m! - n! + (-m + n)!).

The programs for A155451, the canonical program `A155451.P17478661323030272763` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155451 has offset 0).

The definition of A155451 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*C(row(n), col(n))-(col(n)!-row(n)!+(-col(n)+row(n))!)` (program `A155451.P17478661323030272763`, by `A155451.P17478661323030272763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155451.P17478661323030272763

`2*C(row(n), col(n))-(col(n)!-row(n)!+(-col(n)+row(n))!)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155451

/-- `2*C(row(n), col(n))-(col(n)!-row(n)!+(-col(n)+row(n))!)` -/
def P17478661323030272763.Spec : Prop :=
  ∀ n, P17478661323030272763.a n = A155451 n

theorem P17478661323030272763.correct : P17478661323030272763.Spec := by
  intro n
  simp only [A155451]

end A155451

/-! ## A155451.P12669143527581370076

`A028326(n)-A155170(n)`
-/

namespace A155451.P12669143527581370076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A155170 n

end

end A155451.P12669143527581370076

namespace A155451

/-- `A028326(n)-A155170(n)` -/
def P12669143527581370076.Spec : Prop :=
  ∀ n, P12669143527581370076.a n = A155451 n

theorem P12669143527581370076.correct : P12669143527581370076.Spec := by
  intro n
  simp only [A155451, Nat.add_sub_cancel, A155451.P12669143527581370076.a, A155451.P17478661323030272763.a, A028326, A028326.P7676793339942299677.a, A155170, A155170.P4565705859408288920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155451

/-! ## A155451.P15406805462011217412

`A109128(n)+1-A155170(n)`
-/

namespace A155451.P15406805462011217412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n + (1 - A155170 n)

end

end A155451.P15406805462011217412

namespace A155451

/-- `A109128(n)+1-A155170(n)` -/
def P15406805462011217412.Spec : Prop :=
  ∀ n, P15406805462011217412.a n = A155451 n

theorem P15406805462011217412.correct : P15406805462011217412.Spec := by
  intro n
  simp only [A155451, Nat.add_sub_cancel, A155451.P15406805462011217412.a, A155451.P17478661323030272763.a, A109128, A109128.P7867596798531783597.a, A155170, A155170.P4565705859408288920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155451

/-! ## A155451.P8800226049690145075

`A028326(n)+A156045(n)-2`
-/

namespace A155451.P8800226049690145075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n + (A156045 n - 2)

end

end A155451.P8800226049690145075

namespace A155451

/-- `A028326(n)+A156045(n)-2` -/
def P8800226049690145075.Spec : Prop :=
  ∀ n, P8800226049690145075.a n = A155451 n

theorem P8800226049690145075.correct : P8800226049690145075.Spec := by
  intro n
  simp only [A155451, Nat.add_sub_cancel, A155451.P8800226049690145075.a, A155451.P17478661323030272763.a, A028326, A028326.P7676793339942299677.a, A156045, A156045.P3215732705160783585.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155451

/-! ## A155451.P11966036323972068326

`A156045(n)+2*A014473(n)`
-/

namespace A155451.P11966036323972068326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + 2 * A014473 n

end

end A155451.P11966036323972068326

namespace A155451

/-- `A156045(n)+2*A014473(n)` -/
def P11966036323972068326.Spec : Prop :=
  ∀ n, P11966036323972068326.a n = A155451 n

end A155451

/-! ## A155451.P11884752348482581112

`2*A007318(n)-A155170(n)`
-/

namespace A155451.P11884752348482581112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A155170 n

end

end A155451.P11884752348482581112

namespace A155451

/-- `2*A007318(n)-A155170(n)` -/
def P11884752348482581112.Spec : Prop :=
  ∀ n, P11884752348482581112.a n = A155451 n

theorem P11884752348482581112.correct : P11884752348482581112.Spec := by
  intro n
  simp only [A155451, Nat.add_sub_cancel, A155451.P11884752348482581112.a, A155451.P17478661323030272763.a, A007318, A007318.P11755526479805562006.a, A155170, A155170.P4565705859408288920.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155451

/-! ## A155451.P106205790304133070

`2*A007318(n)-(2-A156045(n))`
-/

namespace A155451.P106205790304133070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - (2 - A156045 n)

end

end A155451.P106205790304133070

namespace A155451

/-- `2*A007318(n)-(2-A156045(n))` -/
def P106205790304133070.Spec : Prop :=
  ∀ n, P106205790304133070.a n = A155451 n

theorem P106205790304133070.correct : P106205790304133070.Spec := by
  intro n
  simp only [A155451, Nat.add_sub_cancel, A155451.P106205790304133070.a, A155451.P17478661323030272763.a, A007318, A007318.P11755526479805562006.a, A156045, A156045.P3215732705160783585.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155451

/-! ## A155451.P3337853604881990118

`A156045(n)+A005843(A014473(n))`
-/

namespace A155451.P3337853604881990118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + A005843 (A014473 n).toNat

end

end A155451.P3337853604881990118

namespace A155451

/-- `A156045(n)+A005843(A014473(n))` -/
def P3337853604881990118.Spec : Prop :=
  ∀ n, P3337853604881990118.a n = A155451 n

end A155451

/-! ## A155451.P15041136884637487340

`A004277(A007318(n))-A155170(n)`
-/

namespace A155451.P15041136884637487340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007318 n).toNat - A155170 n

end

end A155451.P15041136884637487340

namespace A155451

/-- `A004277(A007318(n))-A155170(n)` -/
def P15041136884637487340.Spec : Prop :=
  ∀ n, P15041136884637487340.a n = A155451 n

end A155451

/-! ## A155451.P9982024943077949949

`A156045(n)+A004523(A131060(n))`
-/

namespace A155451.P9982024943077949949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + A004523 (A131060 n).toNat

end

end A155451.P9982024943077949949

namespace A155451

/-- `A156045(n)+A004523(A131060(n))` -/
def P9982024943077949949.Spec : Prop :=
  ∀ n, P9982024943077949949.a n = A155451 n

end A155451

/-!
# A155452: Triangle read by rows: let t1(n,k)=Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]; then T(n,m)=2*t1(n + 1, k) - (m! - n! + (-m + n)!).

The programs for A155452, there is no canonical definition to state claims against.
-/

/-! ## A155452.P6041041899827929451

`A176200(n)+1-A155170(n)`
-/

namespace A155452.P6041041899827929451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 n + (1 - A155170 n)

end

end A155452.P6041041899827929451

/-! ## A155452.P16414209763513426507

`A156045(n)+A176200(n)-1`
-/

namespace A155452.P16414209763513426507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156045 n + (A176200 n - 1)

end

end A155452.P16414209763513426507

/-! ## A155452.P14390452029753159437

`2*A008292(n+1)-A155170(n)`
-/

namespace A155452.P14390452029753159437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008292 (n + 1) - A155170 n

end

end A155452.P14390452029753159437

/-! ## A155452.P3369700267576178592

`A014681(A176200(n))-A155170(n)`
-/

namespace A155452.P3369700267576178592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A176200 n).toNat - A155170 n

end

end A155452.P3369700267576178592

/-! ## A155452.P15220024614938962754

`A004277(A008292(n+1))-A155170(n)`
-/

namespace A155452.P15220024614938962754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008292 (n + 1)).toNat - A155170 n

end

end A155452.P15220024614938962754

/-!
# A155453: Triangle read by rows: T(n,k) = 1 + n! - k! - (n - k)! + k!*(n - k)!.

The programs for A155453, the canonical program `A155453.P9446020846665412096` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155453 has offset 0).

The definition of A155453 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+row(n)!-col(n)!-(row(n)-col(n))!+col(n)!*(row(n)-col(n))!` (program `A155453.P9446020846665412096`, by `A155453.P9446020846665412096.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155453.P9446020846665412096

`1+row(n)!-col(n)!-(row(n)-col(n))!+col(n)!*(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155453

/-- `1+row(n)!-col(n)!-(row(n)-col(n))!+col(n)!*(row(n)-col(n))!` -/
def P9446020846665412096.Spec : Prop :=
  ∀ n, P9446020846665412096.a n = A155453 n

theorem P9446020846665412096.correct : P9446020846665412096.Spec := by
  intro n
  simp only [A155453]

end A155453

/-! ## A155453.P11916351511614448178

`A098361(n)+A156045(n)-1`
-/

namespace A155453.P11916351511614448178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n + (A156045 n - 1)

end

end A155453.P11916351511614448178

namespace A155453

/-- `A098361(n)+A156045(n)-1` -/
def P11916351511614448178.Spec : Prop :=
  ∀ n, P11916351511614448178.a n = A155453 n

theorem P11916351511614448178.correct : P11916351511614448178.Spec := by
  intro n
  simp only [A155453, Nat.add_sub_cancel, A155453.P11916351511614448178.a, A155453.P9446020846665412096.a, A098361, A098361.P4702450051752520523.a, A156045, A156045.P3215732705160783585.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A155453

/-! ## A155453.P18229754983386833600

`A155162(A057944(n))-A155454(n)`
-/

namespace A155453.P18229754983386833600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155162 (A057944 n).toNat - A155454 n

end

end A155453.P18229754983386833600

namespace A155453

/-- `A155162(A057944(n))-A155454(n)` -/
def P18229754983386833600.Spec : Prop :=
  ∀ n, P18229754983386833600.a n = A155453 n

end A155453

/-! ## A155453.P15198189418539977688

`A098361(n)+A023443(A156045(n))`
-/

namespace A155453.P15198189418539977688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n + A023443 (A156045 n).toNat

end

end A155453.P15198189418539977688

namespace A155453

/-- `A098361(n)+A023443(A156045(n))` -/
def P15198189418539977688.Spec : Prop :=
  ∀ n, P15198189418539977688.a n = A155453 n

end A155453

/-! ## A155453.P3119438460157849462

`A151755(A099594(n))+A003056(n)!`
-/

namespace A155453.P3119438460157849462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A099594 n).toNat + (Nat.factorial (A003056 n).toNat : ℤ)

end

end A155453.P3119438460157849462

namespace A155453

/-- `A151755(A099594(n))+A003056(n)!` -/
def P3119438460157849462.Spec : Prop :=
  ∀ n, P3119438460157849462.a n = A155453 n

end A155453

/-!
# A155454: Triangle read by rows: t(n,k)= k! + (1-k!)*(n - k)!, 0<=k<=n.

The programs for A155454, the canonical program `A155454.P15779450877627687636` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155454 has offset 0).

The definition of A155454 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)!+(1-col(n)!)*(row(n)-col(n))!` (program `A155454.P15779450877627687636`, by `A155454.P15779450877627687636.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155454.P15779450877627687636

`col(n)!+(1-col(n)!)*(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155454

/-- `col(n)!+(1-col(n)!)*(row(n)-col(n))!` -/
def P15779450877627687636.Spec : Prop :=
  ∀ n, P15779450877627687636.a n = A155454 n

theorem P15779450877627687636.correct : P15779450877627687636.Spec := by
  intro n
  simp only [A155454]

end A155454

/-! ## A155454.P12349282199409109893

`A177974(n)/A007318(n)`
-/

namespace A155454.P12349282199409109893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177974 n : ℚ) / (A007318 n : ℚ)

end

end A155454.P12349282199409109893

namespace A155454

/-- `A177974(n)/A007318(n)` -/
def P12349282199409109893.Spec : Prop :=
  ∀ n, P12349282199409109893.a n = (A155454 n : ℚ)

end A155454

/-! ## A155454.P8373454681493754986

`A177974(n)/(A014473(n)+1)`
-/

namespace A155454.P8373454681493754986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177974 n : ℚ) / (A014473 n + 1 : ℚ)

end

end A155454.P8373454681493754986

namespace A155454

/-- `A177974(n)/(A014473(n)+1)` -/
def P8373454681493754986.Spec : Prop :=
  ∀ n, P8373454681493754986.a n = (A155454 n : ℚ)

end A155454

/-! ## A155454.P18397187081141856098

`2/A028326(n)*A177974(n)`
-/

namespace A155454.P18397187081141856098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A177974 n : ℚ)

end

end A155454.P18397187081141856098

namespace A155454

/-- `2/A028326(n)*A177974(n)` -/
def P18397187081141856098.Spec : Prop :=
  ∀ n, P18397187081141856098.a n = (A155454 n : ℚ)

end A155454

/-! ## A155454.P3460730497263516872

`A177974(n)/A004526(A028326(n))`
-/

namespace A155454.P3460730497263516872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177974 n : ℚ) / (A004526 (A028326 n).toNat : ℚ)

end

end A155454.P3460730497263516872

namespace A155454

/-- `A177974(n)/A004526(A028326(n))` -/
def P3460730497263516872.Spec : Prop :=
  ∀ n, P3460730497263516872.a n = (A155454 n : ℚ)

end A155454

/-! ## A155454.P10416455486813017460

`A177974(n)/A000463(A109128(n))`
-/

namespace A155454.P10416455486813017460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177974 n : ℚ) / (A000463 (A109128 n).toNat : ℚ)

end

end A155454.P10416455486813017460

namespace A155454

/-- `A177974(n)/A000463(A109128(n))` -/
def P10416455486813017460.Spec : Prop :=
  ∀ n, P10416455486813017460.a n = (A155454 n : ℚ)

end A155454

/-!
# A155455: a(n) = 5*a(n-1)+16*a(n-2), n>1 ; a(0)=0, a(1)=1.

The programs for A155455, the canonical program `A155455.P2584867776971472600` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155455 has offset 0).

The definition of A155455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+16*a(n-2)` (program `A155455.P2584867776971472600`, by `A155455.P2584867776971472600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155455.P3439522501322270580

`ogf(x/(1-5x-16x^2))`
-/

namespace A155455.P3439522501322270580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -5, -16] n

end

end A155455.P3439522501322270580

namespace A155455

/-- `ogf(x/(1-5x-16x^2))` -/
def P3439522501322270580.Spec : Prop :=
  ∀ n, P3439522501322270580.a n = A155455 n

end A155455

/-! ## A155455.P2584867776971472600

`5*a(n-1)+16*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155455

/-- `5*a(n-1)+16*a(n-2)` -/
def P2584867776971472600.Spec : Prop :=
  ∀ n, (P2584867776971472600.a n : ℤ) = A155455 n

theorem P2584867776971472600.correct : P2584867776971472600.Spec := by
  intro n
  simp only [A155455]

end A155455

/-! ## A155455.P17629455532349291340

`A083861(eq[22, A025581(n)])`
-/

namespace A155455.P17629455532349291340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083861 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A155455.P17629455532349291340

namespace A155455

/-- `A083861(eq[22, A025581(n)])` -/
def P17629455532349291340.Spec : Prop :=
  ∀ n, P17629455532349291340.a n = A155455 n

end A155455

/-!
# A155456: Write (1+1/x)*log(1+x) = Sum c(n)*x^n; then a(n) = (n+1)!*c(n).

The programs for A155456, there is no canonical definition to state claims against.
-/

/-! ## A155456.P601759038739277366

`∏[char[1]-abs(1-n)]`
-/

namespace A155456.P601759038739277366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A155456.P601759038739277366

/-! ## A155456.P10120325411332747779

`-∏[C(2, n)!-n]`
-/

namespace A155456.P10120325411332747779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A155456.P10120325411332747779

/-! ## A155456.P6620487238666213176

`(1-n)*a(n-1)` with `a(0)=-1, a(1)=-1`
-/

namespace A155456.P6620487238666213176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  (1 - (n : ℤ)) * a (n - 1)

end

end A155456.P6620487238666213176

/-! ## A155456.P12185406019432621162

`a(n-1)/(1-n)^(-1)` with `a(0)=-1, a(1)=-1`
-/

namespace A155456.P12185406019432621162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1, -1] fun n a =>
  a (n - 1) / (1 - (n : ℤ) : ℚ) ^ (-1 : ℤ)

end

end A155456.P12185406019432621162

/-! ## A155456.P13745254497341684823

`-∏[val((n+1)², n+3)-(n-1)]`
-/

namespace A155456.P13745254497341684823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ((n + 1) ^ 2) (n + 3) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A155456.P13745254497341684823

/-! ## A155456.P10200228112399508960

`-A008275(∑[abs(1-n)])`
-/

namespace A155456.P10200228112399508960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155456.P10200228112399508960

/-! ## A155456.P1459067874745103392

`-A133942(log2(ceil(2^(n-1))))`
-/

namespace A155456.P1459067874745103392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A133942 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat

end

end A155456.P1459067874745103392

/-! ## A155456.P7127802823848518925

`-A008296(A000124(n))`
-/

namespace A155456.P7127802823848518925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008296 (A000124 n).toNat

end

end A155456.P7127802823848518925

/-! ## A155456.P15852061242756041288

`n-(A048994(A000124(n))+A028310(n))`
-/

namespace A155456.P15852061242756041288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A048994 (A000124 n).toNat + A028310 n)

end

end A155456.P15852061242756041288

/-! ## A155456.P17639216775130326030

`-∏[or(1-n, n!)]`
-/

namespace A155456.P17639216775130326030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A155456.P17639216775130326030

/-!
# A155457: a(n) = exp(Lambda(n)), where Lambda(n) is the von Mangoldt function for odd (!) primes.

The programs for A155457, there is no canonical definition to state claims against.
-/

/-! ## A155457.P14987820989075536324

`A014963(n^(n%2))`
-/

namespace A155457.P14987820989075536324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n ^ (n % 2))

end

end A155457.P14987820989075536324

/-! ## A155457.P12087114763883708233

`A014963(C(n, and(1, n)))`
-/

namespace A155457.P12087114763883708233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose n (Nat.land 1 n))

end

end A155457.P12087114763883708233

/-! ## A155457.P3500495438381679773

`A014963(n^Δ[or(1, n)])`
-/

namespace A155457.P3500495438381679773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat

end

end A155457.P3500495438381679773

/-! ## A155457.P17047758762456476519

`A099636(n^Δ[or(1, n)])`
-/

namespace A155457.P17047758762456476519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ))).toNat

end

end A155457.P17047758762456476519

/-! ## A155457.P17981848059651046054

`A014963(gcd(n, (n+1)%2))`
-/

namespace A155457.P17981848059651046054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.gcd n ((n + 1) % 2))

end

end A155457.P17981848059651046054

/-! ## A155457.P7100393528643672306

`A080305(∏{p}[C(n, 2*floor(n/2)), #])`
-/

namespace A155457.P7100393528643672306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080305 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A155457.P7100393528643672306

/-! ## A155457.P10205963045118556212

`A014963(A093178(n))`
-/

namespace A155457.P10205963045118556212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A093178 n).toNat

end

end A155457.P10205963045118556212

/-! ## A155457.P16529775548573978409

`A307641(A084263(n))`
-/

namespace A155457.P16529775548573978409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (A084263 n).toNat

end

end A155457.P16529775548573978409

/-! ## A155457.P8631157626962139174

`A307641(A128918(n))`
-/

namespace A155457.P8631157626962139174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307641 (A128918 n).toNat

end

end A155457.P8631157626962139174

/-! ## A155457.P12731497783052936602

`A204087(A266259(n))`
-/

namespace A155457.P12731497783052936602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204087 (A266259 n).toNat

end

end A155457.P12731497783052936602

/-!
# A155458: a(n)=6*a(n-1)+25*a(n-2), n>2 ; a(0)=1, a(1)=1, a(2)=6 .

The programs for A155458, the canonical program `A155458.P9052935086672240114` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155458 has offset 0).

The definition of A155458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)+25*a(n-2)` (program `A155458.P9052935086672240114`, by `A155458.P9052935086672240114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155458.P7361304150129992984

`ogf((1-5x-25x^2)/(1-6x-25x^2))`
-/

namespace A155458.P7361304150129992984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, -25] [1, -6, -25] n

end

end A155458.P7361304150129992984

namespace A155458

/-- `ogf((1-5x-25x^2)/(1-6x-25x^2))` -/
def P7361304150129992984.Spec : Prop :=
  ∀ n, P7361304150129992984.a n = A155458 n

end A155458

/-! ## A155458.P9052935086672240114

`6*a(n-1)+25*a(n-2)` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155458

/-- `6*a(n-1)+25*a(n-2)` -/
def P9052935086672240114.Spec : Prop :=
  ∀ n, (P9052935086672240114.a n : ℤ) = A155458 n

theorem P9052935086672240114.correct : P9052935086672240114.Spec := by
  intro n
  simp only [A155458]

end A155458

/-!
# A155459: a(n) = 7*a(n-1)+36*a(n-2), n>2 ; a(0)=1, a(1)=1, a(2)=7 .

The programs for A155459, the canonical program `A155459.P4811683204226401095` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155459 has offset 0).

The definition of A155459 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)+36*a(n-2)` (program `A155459.P4811683204226401095`, by `A155459.P4811683204226401095.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155459.P9227771541835996758

`ogf((1-6x-36x^2)/(1-7x-36x^2))`
-/

namespace A155459.P9227771541835996758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, -36] [1, -7, -36] n

end

end A155459.P9227771541835996758

namespace A155459

/-- `ogf((1-6x-36x^2)/(1-7x-36x^2))` -/
def P9227771541835996758.Spec : Prop :=
  ∀ n, P9227771541835996758.a n = A155459 n

end A155459

/-! ## A155459.P4811683204226401095

`7*a(n-1)+36*a(n-2)` with `a(0)=1, a(1)=1, a(2)=7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155459

/-- `7*a(n-1)+36*a(n-2)` -/
def P4811683204226401095.Spec : Prop :=
  ∀ n, (P4811683204226401095.a n : ℤ) = A155459 n

theorem P4811683204226401095.correct : P4811683204226401095.Spec := by
  intro n
  simp only [A155459]

end A155459

/-!
# A155460: a(n) = 8*a(n-1)+49*a(n-2), n>2 ; a(0)=1, a(1)=1, a(2)=8 .

The programs for A155460, the canonical program `A155460.P12335253694128653567` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155460 has offset 0).

The definition of A155460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+49*a(n-2)` (program `A155460.P12335253694128653567`, by `A155460.P12335253694128653567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155460.P3417690319936269390

`ogf((1-7x-49x^2)/(1-8x-49x^2))`
-/

namespace A155460.P3417690319936269390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, -49] [1, -8, -49] n

end

end A155460.P3417690319936269390

namespace A155460

/-- `ogf((1-7x-49x^2)/(1-8x-49x^2))` -/
def P3417690319936269390.Spec : Prop :=
  ∀ n, P3417690319936269390.a n = A155460 n

end A155460

/-! ## A155460.P12335253694128653567

`8*a(n-1)+49*a(n-2)` with `a(0)=1, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155460

/-- `8*a(n-1)+49*a(n-2)` -/
def P12335253694128653567.Spec : Prop :=
  ∀ n, (P12335253694128653567.a n : ℤ) = A155460 n

theorem P12335253694128653567.correct : P12335253694128653567.Spec := by
  intro n
  simp only [A155460]

end A155460

/-!
# A155461: a(n) = n^2 + 52*n + 30.

The programs for A155461, the canonical program `A155461.P14304040504857833106` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155461 has offset 0).

The definition of A155461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+52*n+30` (program `A155461.P14304040504857833106`, by `A155461.P14304040504857833106.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155461.P14304040504857833106

`n²+52*n+30`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155461

/-- `n²+52*n+30` -/
def P14304040504857833106.Spec : Prop :=
  ∀ n, (P14304040504857833106.a n : ℤ) = A155461 n

theorem P14304040504857833106.correct : P14304040504857833106.Spec := by
  intro n
  simp only [A155461]

end A155461

/-! ## A155461.P15513771701178112713

`ogf((30-7x-21x^2)/(1-3x+3x^2-x^3))`
-/

namespace A155461.P15513771701178112713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [30, -7, -21] [1, -3, 3, -1] n

end

end A155461.P15513771701178112713

namespace A155461

/-- `ogf((30-7x-21x^2)/(1-3x+3x^2-x^3))` -/
def P15513771701178112713.Spec : Prop :=
  ∀ n, P15513771701178112713.a n = A155461 n

end A155461

/-! ## A155461.P558795403029866244

`∑[a(n-1)+2]` with `a(0)=30, a(1)=53`
-/

namespace A155461.P558795403029866244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30, 53] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155461.P558795403029866244

namespace A155461

/-- `∑[a(n-1)+2]` -/
def P558795403029866244.Spec : Prop :=
  ∀ n, (P558795403029866244.a n : ℤ) = A155461 n

end A155461

/-! ## A155461.P8304780528912102774

`abs(xor(A053741(n)+(n+1)²+8, -1))`
-/

namespace A155461.P8304780528912102774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A053741 n + ((n + 1) ^ 2 : ℤ) + 8) (-1)|

end

end A155461.P8304780528912102774

namespace A155461

/-- `abs(xor(A053741(n)+(n+1)²+8, -1))` -/
def P8304780528912102774.Spec : Prop :=
  ∀ n, P8304780528912102774.a n = A155461 n

end A155461

/-! ## A155461.P4697817976109649846

`Δ[A195323(n)+A052153(n+1)]`
-/

namespace A155461.P4697817976109649846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n + A052153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155461.P4697817976109649846

namespace A155461

/-- `Δ[A195323(n)+A052153(n+1)]` -/
def P4697817976109649846.Spec : Prop :=
  ∀ n, P4697817976109649846.a n = A155461 n

end A155461

/-! ## A155461.P11057569149230376922

`Δ[A100164(n+1)-A260260(n)]`
-/

namespace A155461.P11057569149230376922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100164 (n + 1) - A260260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155461.P11057569149230376922

namespace A155461

/-- `Δ[A100164(n+1)-A260260(n)]` -/
def P11057569149230376922.Spec : Prop :=
  ∀ n, P11057569149230376922.a n = A155461 n

end A155461

/-! ## A155461.P3455939767149245119

`A020710(A053742(n)+A005563(n))`
-/

namespace A155461.P3455939767149245119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A053742 n + A005563 n).toNat

end

end A155461.P3455939767149245119

namespace A155461

/-- `A020710(A053742(n)+A005563(n))` -/
def P3455939767149245119.Spec : Prop :=
  ∀ n, P3455939767149245119.a n = A155461 n

end A155461

/-!
# A155462: Frequency of n in A155213.

The programs for A155462, the canonical program `A155462.P12021390879330110779` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155462 has offset 0).

The definition of A155462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155462.P12021390879330110779

`Δ[A230980(9*n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155462

/-- `Δ[A230980(9*n)]` -/
def P12021390879330110779.Spec : Prop :=
  ∀ n, P12021390879330110779.a n = A155462 n

theorem P12021390879330110779.correct : P12021390879330110779.Spec := by
  intro n
  simp only [A155462]

end A155462

/-! ## A155462.P1758096407415963550

`Δ[A055679(18*n+1)]`
-/

namespace A155462.P1758096407415963550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (18 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P1758096407415963550

namespace A155462

/-- `Δ[A055679(18*n+1)]` -/
def P1758096407415963550.Spec : Prop :=
  ∀ n, P1758096407415963550.a n = A155462 n

end A155462

/-! ## A155462.P5141144670287362158

`Δ[A000720(abs(1-9*n))]`
-/

namespace A155462.P5141144670287362158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |1 - (9 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P5141144670287362158

namespace A155462

/-- `Δ[A000720(abs(1-9*n))]` -/
def P5141144670287362158.Spec : Prop :=
  ∀ n, P5141144670287362158.a n = A155462 n

end A155462

/-! ## A155462.P14793527981225412097

`Δ[A056172(A161705(n))]`
-/

namespace A155462.P14793527981225412097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A161705 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P14793527981225412097

namespace A155462

/-- `Δ[A056172(A161705(n))]` -/
def P14793527981225412097.Spec : Prop :=
  ∀ n, P14793527981225412097.a n = A155462 n

end A155462

/-! ## A155462.P7453049005654418299

`abs(Δ[A230980(A008591(n))])`
-/

namespace A155462.P7453049005654418299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A008591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A155462.P7453049005654418299

namespace A155462

/-- `abs(Δ[A230980(A008591(n))])` -/
def P7453049005654418299.Spec : Prop :=
  ∀ n, P7453049005654418299.a n = A155462 n

end A155462

/-! ## A155462.P2129284038249390082

`Δ[A036234(A301291(2*n))]`
-/

namespace A155462.P2129284038249390082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A301291 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P2129284038249390082

namespace A155462

/-- `Δ[A036234(A301291(2*n))]` -/
def P2129284038249390082.Spec : Prop :=
  ∀ n, P2129284038249390082.a n = A155462 n

end A155462

/-! ## A155462.P10990161876242869470

`Δ[A036234(A008486(3*n))]`
-/

namespace A155462.P10990161876242869470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A008486 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P10990161876242869470

namespace A155462

/-- `Δ[A036234(A008486(3*n))]` -/
def P10990161876242869470.Spec : Prop :=
  ∀ n, P10990161876242869470.a n = A155462 n

end A155462

/-! ## A155462.P10152421363271176373

`Δ[A003963(A007918(9*n))]`
-/

namespace A155462.P10152421363271176373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A007918 (9 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P10152421363271176373

namespace A155462

/-- `Δ[A003963(A007918(9*n))]` -/
def P10152421363271176373.Spec : Prop :=
  ∀ n, P10152421363271176373.a n = A155462 n

end A155462

/-! ## A155462.P6899012553146662352

`Δ[A049084(A151800(9*n))]`
-/

namespace A155462.P6899012553146662352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A151800 (9 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P6899012553146662352

namespace A155462

/-- `Δ[A049084(A151800(9*n))]` -/
def P6899012553146662352.Spec : Prop :=
  ∀ n, P6899012553146662352.a n = A155462 n

end A155462

/-! ## A155462.P17176650451593626320

`Δ[A056172(A111284(2*n+1)+A008706(2*n))]`
-/

namespace A155462.P17176650451593626320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A111284 (2 * n + 1) + A008706 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155462.P17176650451593626320

namespace A155462

/-- `Δ[A056172(A111284(2*n+1)+A008706(2*n))]` -/
def P17176650451593626320.Spec : Prop :=
  ∀ n, P17176650451593626320.a n = A155462 n

end A155462

/-!
# A155463: Largest element of a set of n primes with the property that the pairwise averages are all distinct primes, having the smallest largest element (A115631).

The programs for A155463, there is no canonical definition to state claims against.
-/

/-! ## A155463.P17712149248967937031

`A115631(C(n+3, 2))`
-/

namespace A155463.P17712149248967937031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (Nat.choose (n + 3) 2)

end

end A155463.P17712149248967937031

/-! ## A155463.P9055283887595288067

`A115631(∑[n+2]+1)`
-/

namespace A155463.P9055283887595288067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A155463.P9055283887595288067

/-! ## A155463.P14319608472074307860

`record[A115631(A198456(n+1))]`
-/

namespace A155463.P14319608472074307860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A198456 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155463.P14319608472074307860

/-! ## A155463.P5089782371608276826

`record[A115631(A198465(n+1))]`
-/

namespace A155463.P5089782371608276826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A198465 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155463.P5089782371608276826

/-! ## A155463.P5367714160584145525

`record[A115631(A198467(n+1))]`
-/

namespace A155463.P5367714160584145525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115631 (A198467 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155463.P5367714160584145525

/-!
# A155464: a(n) = 7*a(n-1) - 7*a(n-2) + a(n-3) for n > 2; a(0) = 0, a(1) = 51, a(2) = 340.

The programs for A155464, the canonical program `A155464.P7297807944434187999` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155464 has offset 0).

The definition of A155464 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-7*a(n-2)+a(n-3)` (program `A155464.P7297807944434187999`, by `A155464.P7297807944434187999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155464.P790745456226862829

`ogf((51x-17x^2)/(1-7x+7x^2-x^3))`
-/

namespace A155464.P790745456226862829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 51, -17] [1, -7, 7, -1] n

end

end A155464.P790745456226862829

namespace A155464

/-- `ogf((51x-17x^2)/(1-7x+7x^2-x^3))` -/
def P790745456226862829.Spec : Prop :=
  ∀ n, P790745456226862829.a n = A155464 n

end A155464

/-! ## A155464.P6268320195250950295

`6*a(n-1)-a(n-2)+34` with `a(0)=0, a(1)=51`
-/

namespace A155464.P6268320195250950295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 51] fun n a =>
  6 * a (n - 1) - a (n - 2) + 34

end

end A155464.P6268320195250950295

namespace A155464

/-- `6*a(n-1)-a(n-2)+34` -/
def P6268320195250950295.Spec : Prop :=
  ∀ n, P6268320195250950295.a n = A155464 n

end A155464

/-! ## A155464.P7297807944434187999

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=0, a(1)=51, a(2)=340`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155464

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P7297807944434187999.Spec : Prop :=
  ∀ n, P7297807944434187999.a n = A155464 n

theorem P7297807944434187999.correct : P7297807944434187999.Spec := by
  intro n
  simp only [A155464]

end A155464

/-! ## A155464.P11853482031743037952

`17*(A002203(2*n+1)-2)/4`
-/

namespace A155464.P11853482031743037952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (17 * (A002203 (2 * n + 1) - 2) : ℚ) / 4

end

end A155464.P11853482031743037952

namespace A155464

/-- `17*(A002203(2*n+1)-2)/4` -/
def P11853482031743037952.Spec : Prop :=
  ∀ n, P11853482031743037952.a n = (A155464 n : ℚ)

end A155464

/-! ## A155464.P1468414238302162398

`A118120(3*n)`
-/

namespace A155464.P1468414238302162398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (3 * n)

end

end A155464.P1468414238302162398

namespace A155464

/-- `A118120(3*n)` -/
def P1468414238302162398.Spec : Prop :=
  ∀ n, P1468414238302162398.a n = A155464 n

end A155464

/-! ## A155464.P18396417513833980083

`17*A001652(n)`
-/

namespace A155464.P18396417513833980083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A001652 n

end

end A155464.P18396417513833980083

namespace A155464

/-- `17*A001652(n)` -/
def P18396417513833980083.Spec : Prop :=
  ∀ n, P18396417513833980083.a n = A155464 n

end A155464

/-! ## A155464.P2496299159055549578

`17*A247311(A016969(n))`
-/

namespace A155464.P2496299159055549578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A247311 (A016969 n).toNat

end

end A155464.P2496299159055549578

namespace A155464

/-- `17*A247311(A016969(n))` -/
def P2496299159055549578.Spec : Prop :=
  ∀ n, P2496299159055549578.a n = A155464 n

end A155464

/-! ## A155464.P14189081066291733470

`17*A261116(A005408(n))`
-/

namespace A155464.P14189081066291733470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A261116 (A005408 n).toNat

end

end A155464.P14189081066291733470

namespace A155464

/-- `17*A261116(A005408(n))` -/
def P14189081066291733470.Spec : Prop :=
  ∀ n, P14189081066291733470.a n = A155464 n

end A155464

/-! ## A155464.P12985147702994834979

`17*A261116(A247328(n+1))`
-/

namespace A155464.P12985147702994834979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A261116 (A247328 (n + 1)).toNat

end

end A155464.P12985147702994834979

namespace A155464

/-- `17*A261116(A247328(n+1))` -/
def P12985147702994834979.Spec : Prop :=
  ∀ n, P12985147702994834979.a n = A155464 n

end A155464

/-! ## A155464.P14467724897510117790

`17*lcm(A143608(n), A143609(n+1))`
-/

namespace A155464.P14467724897510117790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 * Int.lcm (A143608 n) (A143609 (n + 1))

end

end A155464.P14467724897510117790

namespace A155464

/-- `17*lcm(A143608(n), A143609(n+1))` -/
def P14467724897510117790.Spec : Prop :=
  ∀ n, (P14467724897510117790.a n : ℤ) = A155464 n

end A155464

/-!
# A155465: a(n) = 7*a(n-1) - 7*a(n-2) + a(n-3) for n > 2; a(0) = 7, a(1) = 88, a(2) = 555.

The programs for A155465, the canonical program `A155465.P6086968520252880914` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155465 has offset 0).

The definition of A155465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-7*a(n-2)+a(n-3)` (program `A155465.P6086968520252880914`, by `A155465.P6086968520252880914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155465.P5045482631847824035

`ogf((7+39x-12x^2)/(1-7x+7x^2-x^3))`
-/

namespace A155465.P5045482631847824035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 39, -12] [1, -7, 7, -1] n

end

end A155465.P5045482631847824035

namespace A155465

/-- `ogf((7+39x-12x^2)/(1-7x+7x^2-x^3))` -/
def P5045482631847824035.Spec : Prop :=
  ∀ n, P5045482631847824035.a n = A155465 n

end A155465

/-! ## A155465.P12863536888412211339

`6*a(n-1)-a(n-2)+34` with `a(0)=7, a(1)=88`
-/

namespace A155465.P12863536888412211339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 88] fun n a =>
  6 * a (n - 1) - a (n - 2) + 34

end

end A155465.P12863536888412211339

namespace A155465

/-- `6*a(n-1)-a(n-2)+34` -/
def P12863536888412211339.Spec : Prop :=
  ∀ n, P12863536888412211339.a n = A155465 n

end A155465

/-! ## A155465.P6086968520252880914

`7*a(n-1)-7*a(n-2)+a(n-3)` with `a(0)=7, a(1)=88, a(2)=555`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155465

/-- `7*a(n-1)-7*a(n-2)+a(n-3)` -/
def P6086968520252880914.Spec : Prop :=
  ∀ n, P6086968520252880914.a n = A155465 n

theorem P6086968520252880914.correct : P6086968520252880914.Spec := by
  intro n
  simp only [A155465]

end A155465

/-! ## A155465.P16710320593996159117

`(3*A002203(2*n+3)+10*A002203(2*n+1)-34)/4`
-/

namespace A155465.P16710320593996159117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002203 (2 * n + 3) + 10 * A002203 (2 * n + 1) - 34 : ℚ) / 4

end

end A155465.P16710320593996159117

namespace A155465

/-- `(3*A002203(2*n+3)+10*A002203(2*n+1)-34)/4` -/
def P16710320593996159117.Spec : Prop :=
  ∀ n, P16710320593996159117.a n = (A155465 n : ℚ)

end A155465

/-! ## A155465.P15413658621206458273

`A117473(Δ[n²])`
-/

namespace A155465.P15413658621206458273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155465.P15413658621206458273

namespace A155465

/-- `A117473(Δ[n²])` -/
def P15413658621206458273.Spec : Prop :=
  ∀ n, P15413658621206458273.a n = A155465 n

end A155465

/-! ## A155465.P10139903954495706927

`A118120(3*n+1)`
-/

namespace A155465.P10139903954495706927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (3 * n + 1)

end

end A155465.P10139903954495706927

namespace A155465

/-- `A118120(3*n+1)` -/
def P10139903954495706927.Spec : Prop :=
  ∀ n, P10139903954495706927.a n = A155465 n

end A155465

/-! ## A155465.P5845000151356066178

`or(char[2], A117473(2*n+1))`
-/

namespace A155465.P5845000151356066178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A117473 (2 * n + 1))

end

end A155465.P5845000151356066178

namespace A155465

/-- `or(char[2], A117473(2*n+1))` -/
def P5845000151356066178.Spec : Prop :=
  ∀ n, P5845000151356066178.a n = A155465 n

end A155465

/-! ## A155465.P12922823888686178367

`record[A117473(A026741(n+1))]`
-/

namespace A155465.P12922823888686178367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A026741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P12922823888686178367

namespace A155465

/-- `record[A117473(A026741(n+1))]` -/
def P12922823888686178367.Spec : Prop :=
  ∀ n, P12922823888686178367.a n = A155465 n

end A155465

/-! ## A155465.P11269439714106370459

`record[A117473(A117451(n+2))]`
-/

namespace A155465.P11269439714106370459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A117451 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P11269439714106370459

namespace A155465

/-- `record[A117473(A117451(n+2))]` -/
def P11269439714106370459.Spec : Prop :=
  ∀ n, P11269439714106370459.a n = A155465 n

end A155465

/-! ## A155465.P17744655314981205197

`record[A117473(A133265(n)-1)]`
-/

namespace A155465.P17744655314981205197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A133265 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P17744655314981205197

namespace A155465

/-- `record[A117473(A133265(n)-1)]` -/
def P17744655314981205197.Spec : Prop :=
  ∀ n, P17744655314981205197.a n = A155465 n

end A155465

/-! ## A155465.P6836546746568565514

`record[A117473(n+1)/A033999(n)]`
-/

namespace A155465.P6836546746568565514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117473 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P6836546746568565514

namespace A155465

/-- `record[A117473(n+1)/A033999(n)]` -/
def P6836546746568565514.Spec : Prop :=
  ∀ n, P6836546746568565514.a n = (A155465 n : ℚ)

end A155465

/-! ## A155465.P8606728645004517913

`record[A117473(n+1)/A028920(n)²]`
-/

namespace A155465.P8606728645004517913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117473 (n + 1) : ℚ) / (A028920 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P8606728645004517913

namespace A155465

/-- `record[A117473(n+1)/A028920(n)²]` -/
def P8606728645004517913.Spec : Prop :=
  ∀ n, P8606728645004517913.a n = (A155465 n : ℚ)

end A155465

/-! ## A155465.P12802938915498604753

`record[A117473(n+1)/A038712(n+1)²]`
-/

namespace A155465.P12802938915498604753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117473 (n + 1) : ℚ) / (A038712 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155465.P12802938915498604753

namespace A155465

/-- `record[A117473(n+1)/A038712(n+1)²]` -/
def P12802938915498604753.Spec : Prop :=
  ∀ n, P12802938915498604753.a n = (A155465 n : ℚ)

end A155465

/-! ## A155465.P2450346256292407057

`A118120(A016777(n))+A000007(n+1)`
-/

namespace A155465.P2450346256292407057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (A016777 n).toNat + A000007 (n + 1)

end

end A155465.P2450346256292407057

namespace A155465

/-- `A118120(A016777(n))+A000007(n+1)` -/
def P2450346256292407057.Spec : Prop :=
  ∀ n, P2450346256292407057.a n = A155465 n

end A155465

/-! ## A155465.P9557268814292872155

`A118120(A016777(n))-n*A000038(n)`
-/

namespace A155465.P9557268814292872155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (A016777 n).toNat - (n : ℤ) * A000038 n

end

end A155465.P9557268814292872155

namespace A155465

/-- `A118120(A016777(n))-n*A000038(n)` -/
def P9557268814292872155.Spec : Prop :=
  ∀ n, P9557268814292872155.a n = A155465 n

end A155465

/-! ## A155465.P9425831222835534836

`2*A117473(2*n+1)/A133265(2*n)`
-/

namespace A155465.P9425831222835534836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A117473 (2 * n + 1) : ℚ) / (A133265 (2 * n) : ℚ)

end

end A155465.P9425831222835534836

namespace A155465

/-- `2*A117473(2*n+1)/A133265(2*n)` -/
def P9425831222835534836.Spec : Prop :=
  ∀ n, P9425831222835534836.a n = (A155465 n : ℚ)

end A155465

/-!
# A155466: a(n) = 7*a(n-1) - 7*a(n-2) + a(n-3) for n > 2; a(0) = 28, a(1) = 207, a(2) = 1248.

The programs for A155466, the canonical program `A155466.P16953251567263279251` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155466 has offset 0).

The definition of A155466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155466.P10209069183872692802

`ogf((28+11x-5x^2)/(1-7x+7x^2-x^3))`
-/

namespace A155466.P10209069183872692802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [28, 11, -5] [1, -7, 7, -1] n

end

end A155466.P10209069183872692802

namespace A155466

/-- `ogf((28+11x-5x^2)/(1-7x+7x^2-x^3))` -/
def P10209069183872692802.Spec : Prop :=
  ∀ n, P10209069183872692802.a n = A155466 n

end A155466

/-! ## A155466.P16953251567263279251

`6*a(n-1)-a(n-2)+34` with `a(0)=28, a(1)=207`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155466

/-- `6*a(n-1)-a(n-2)+34` -/
def P16953251567263279251.Spec : Prop :=
  ∀ n, P16953251567263279251.a n = A155466 n

theorem P16953251567263279251.correct : P16953251567263279251.Spec := by
  intro n
  simp only [A155466]

end A155466

/-! ## A155466.P3427012895311619054

`(10*A002203(2*n+3)+3*A002203(2*n+1)-34)/4`
-/

namespace A155466.P3427012895311619054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * A002203 (2 * n + 3) + 3 * A002203 (2 * n + 1) - 34 : ℚ) / 4

end

end A155466.P3427012895311619054

namespace A155466

/-- `(10*A002203(2*n+3)+3*A002203(2*n+1)-34)/4` -/
def P3427012895311619054.Spec : Prop :=
  ∀ n, P3427012895311619054.a n = (A155466 n : ℚ)

end A155466

/-! ## A155466.P6102893516185927086

`A117473(2*(n+1))`
-/

namespace A155466.P6102893516185927086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (2 * (n + 1))

end

end A155466.P6102893516185927086

namespace A155466

/-- `A117473(2*(n+1))` -/
def P6102893516185927086.Spec : Prop :=
  ∀ n, P6102893516185927086.a n = A155466 n

end A155466

/-! ## A155466.P12420460123154570562

`A118120(3*n+2)`
-/

namespace A155466.P12420460123154570562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (3 * n + 2)

end

end A155466.P12420460123154570562

namespace A155466

/-- `A118120(3*n+2)` -/
def P12420460123154570562.Spec : Prop :=
  ∀ n, P12420460123154570562.a n = A155466 n

end A155466

/-! ## A155466.P11075970441226580703

`record[A117473(A133265(n))]`
-/

namespace A155466.P11075970441226580703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A133265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P11075970441226580703

namespace A155466

/-- `record[A117473(A133265(n))]` -/
def P11075970441226580703.Spec : Prop :=
  ∀ n, P11075970441226580703.a n = A155466 n

end A155466

/-! ## A155466.P3039765209742832608

`record[A118120(A014682(n+1))]`
-/

namespace A155466.P3039765209742832608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118120 (A014682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P3039765209742832608

namespace A155466

/-- `record[A118120(A014682(n+1))]` -/
def P3039765209742832608.Spec : Prop :=
  ∀ n, P3039765209742832608.a n = A155466 n

end A155466

/-! ## A155466.P2201705728061905485

`record[A117473(A117451(n)+1)]`
-/

namespace A155466.P2201705728061905485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A117451 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P2201705728061905485

namespace A155466

/-- `record[A117473(A117451(n)+1)]` -/
def P2201705728061905485.Spec : Prop :=
  ∀ n, P2201705728061905485.a n = A155466 n

end A155466

/-! ## A155466.P9665143045432039264

`record[A117473(2*A028920(n))]`
-/

namespace A155466.P9665143045432039264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (2 * A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P9665143045432039264

namespace A155466

/-- `record[A117473(2*A028920(n))]` -/
def P9665143045432039264.Spec : Prop :=
  ∀ n, P9665143045432039264.a n = A155466 n

end A155466

/-! ## A155466.P3225650049302917240

`record[A117473(A026741(n+1)+1)]`
-/

namespace A155466.P3225650049302917240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A026741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P3225650049302917240

namespace A155466

/-- `record[A117473(A026741(n+1)+1)]` -/
def P3225650049302917240.Spec : Prop :=
  ∀ n, P3225650049302917240.a n = A155466 n

end A155466

/-! ## A155466.P6320544691632632674

`record[A117473(n+2)/A033999(n)]`
-/

namespace A155466.P6320544691632632674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117473 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P6320544691632632674

namespace A155466

/-- `record[A117473(n+2)/A033999(n)]` -/
def P6320544691632632674.Spec : Prop :=
  ∀ n, P6320544691632632674.a n = (A155466 n : ℚ)

end A155466

/-! ## A155466.P12474429338425292985

`record[A117473(A028920(n)+A028920(n))]`
-/

namespace A155466.P12474429338425292985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117473 (A028920 n + A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155466.P12474429338425292985

namespace A155466

/-- `record[A117473(A028920(n)+A028920(n))]` -/
def P12474429338425292985.Spec : Prop :=
  ∀ n, P12474429338425292985.a n = A155466 n

end A155466

/-!
# A155467: Triangle T(n, k) = Eulerian(n+1, k)*Binomial(n+1, k)/(k+1), read by rows.

The programs for A155467, the canonical program `A155467.P1633357225129393114` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155467 has offset 0).

The definition of A155467 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008292, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155467.P1633357225129393114

`C(row(n)+1, col(n))*A008292(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155467

/-- `C(row(n)+1, col(n))*A008292(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)` -/
def P1633357225129393114.Spec : Prop :=
  ∀ n, P1633357225129393114.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P17188989696981969360

`A008292(n+1)/A009766(n)*A088617(n)`
-/

namespace A155467.P17188989696981969360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A009766 n : ℚ) * (A088617 n : ℚ)

end

end A155467.P17188989696981969360

namespace A155467

/-- `A008292(n+1)/A009766(n)*A088617(n)` -/
def P17188989696981969360.Spec : Prop :=
  ∀ n, P17188989696981969360.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P9185763418121639530

`A008292(n+1)/A039598(n)*A120986(n)`
-/

namespace A155467.P9185763418121639530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A039598 n : ℚ) * (A120986 n : ℚ)

end

end A155467.P9185763418121639530

namespace A155467

/-- `A008292(n+1)/A039598(n)*A120986(n)` -/
def P9185763418121639530.Spec : Prop :=
  ∀ n, P9185763418121639530.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P16346823502440759171

`A008292(n+1)/A193739(n)*A153861(n)`
-/

namespace A155467.P16346823502440759171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A193739 n : ℚ) * (A153861 n : ℚ)

end

end A155467.P16346823502440759171

namespace A155467

/-- `A008292(n+1)/A193739(n)*A153861(n)` -/
def P16346823502440759171.Spec : Prop :=
  ∀ n, P16346823502440759171.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P12242155981352623136

`A001263(n+1)/A007318(n)*A008292(n+1)`
-/

namespace A155467.P12242155981352623136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A008292 (n + 1) : ℚ)

end

end A155467.P12242155981352623136

namespace A155467

/-- `A001263(n+1)/A007318(n)*A008292(n+1)` -/
def P12242155981352623136.Spec : Prop :=
  ∀ n, P12242155981352623136.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P422456059553677940

`A008292(n+1)/A002260(n+1)*A074909(n)`
-/

namespace A155467.P422456059553677940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A074909 n : ℚ)

end

end A155467.P422456059553677940

namespace A155467

/-- `A008292(n+1)/A002260(n+1)*A074909(n)` -/
def P422456059553677940.Spec : Prop :=
  ∀ n, P422456059553677940.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P4229279960826181047

`A008292(n+1)/A121757(n)*A089231(n+1)`
-/

namespace A155467.P4229279960826181047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A121757 n : ℚ) * (A089231 (n + 1) : ℚ)

end

end A155467.P4229279960826181047

namespace A155467

/-- `A008292(n+1)/A121757(n)*A089231(n+1)` -/
def P4229279960826181047.Spec : Prop :=
  ∀ n, P4229279960826181047.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P16916471969785708673

`A001263(n+1)/A008459(n)*A141686(n+1)`
-/

namespace A155467.P16916471969785708673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A008459 n : ℚ) * (A141686 (n + 1) : ℚ)

end

end A155467.P16916471969785708673

namespace A155467

/-- `A001263(n+1)/A008459(n)*A141686(n+1)` -/
def P16916471969785708673.Spec : Prop :=
  ∀ n, P16916471969785708673.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P9099844282540950512

`A001263(n+1)*A008292(n+1)/A007318(n)`
-/

namespace A155467.P9099844282540950512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A008292 (n + 1) : ℚ) / (A007318 n : ℚ)

end

end A155467.P9099844282540950512

namespace A155467

/-- `A001263(n+1)*A008292(n+1)/A007318(n)` -/
def P9099844282540950512.Spec : Prop :=
  ∀ n, P9099844282540950512.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P10794243599207244294

`A008292(n+1)/A155495(n)*A155497(n)`
-/

namespace A155467.P10794243599207244294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155497 n : ℚ)

end

end A155467.P10794243599207244294

namespace A155467

/-- `A008292(n+1)/A155495(n)*A155497(n)` -/
def P10794243599207244294.Spec : Prop :=
  ∀ n, P10794243599207244294.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P12114612526840948533

`A008292(n+1)/A142458(n+1)*A155491(n)`
-/

namespace A155467.P12114612526840948533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008292 (n + 1) : ℚ) / (A142458 (n + 1) : ℚ) * (A155491 n : ℚ)

end

end A155467.P12114612526840948533

namespace A155467

/-- `A008292(n+1)/A142458(n+1)*A155491(n)` -/
def P12114612526840948533.Spec : Prop :=
  ∀ n, P12114612526840948533.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P17427758222803853215

`A001263(n+1)*A142075(n+1)/A013609(n)`
-/

namespace A155467.P17427758222803853215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) * A142075 (n + 1) : ℚ) / (A013609 n : ℚ)

end

end A155467.P17427758222803853215

namespace A155467

/-- `A001263(n+1)*A142075(n+1)/A013609(n)` -/
def P17427758222803853215.Spec : Prop :=
  ∀ n, P17427758222803853215.a n = (A155467 n : ℚ)

end A155467

/-! ## A155467.P8535813544049198151

`A174345(n+1)/A174301(n)*A174303(n)`
-/

namespace A155467.P8535813544049198151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174345 (n + 1) : ℚ) / (A174301 n : ℚ) * (A174303 n : ℚ)

end

end A155467.P8535813544049198151

namespace A155467

/-- `A174345(n+1)/A174301(n)*A174303(n)` -/
def P8535813544049198151.Spec : Prop :=
  ∀ n, P8535813544049198151.a n = (A155467 n : ℚ)

end A155467

/-!
# A155468: Numbers that are sums of 8th powers of 2 distinct positive integers.

The programs for A155468, there is no canonical definition to state claims against.
-/

/-! ## A155468.P11217829801498223522

`A003380(lt[1, A329860(n)])`
-/

namespace A155468.P11217829801498223522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A155468.P11217829801498223522

/-! ## A155468.P9262962852453388221

`A003380(lt[1, A351153(n+1)])`
-/

namespace A155468.P9262962852453388221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A155468.P9262962852453388221

/-! ## A155468.P13500924885736954689

`A003380(lt[A360675(n), A007318(n)])`
-/

namespace A155468.P13500924885736954689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155468.P13500924885736954689

/-! ## A155468.P5775787482332143880

`A003380(lt[A360675(n), A008307(n+1)])`
-/

namespace A155468.P5775787482332143880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360675 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155468.P5775787482332143880

/-! ## A155468.P4511466840210002146

`A003380(lt[A373951(n), A142459(n+1)])`
-/

namespace A155468.P4511466840210002146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155468.P4511466840210002146

/-! ## A155468.P7831414419391149827

`A003380(A014132(n+1)%A340787(n+1))`
-/

namespace A155468.P7831414419391149827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (Int.tmod (A014132 (n + 1)) (A340787 (n + 1))).toNat

end

end A155468.P7831414419391149827

/-! ## A155468.P7335726089439181210

`A003380(A014132(n+1)%A051660(n))`
-/

namespace A155468.P7335726089439181210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (Int.tmod (A014132 (n + 1)) (A051660 n)).toNat

end

end A155468.P7335726089439181210

/-! ## A155468.P1621108109618201314

`A003380(comp[∑[n]]%A340787(n+3))`
-/

namespace A155468.P1621108109618201314
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003380 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A340787 (n + 3))).toNat

end

end A155468.P1621108109618201314

/-!
# A155469: Numbers that are the sum of 2 (not-distinct) numbers; nonzero square and cube, including repetitions.

The programs for A155469, there is no canonical definition to state claims against.
-/

/-! ## A155469.P4614556896392342000

`A055394(∑[A267635(A344311(n+1))])`
-/

namespace A155469.P4614556896392342000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267635 (A344311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155469.P4614556896392342000

/-! ## A155469.P11896733897016851101

`A055394(∑[A265186(A000389(n))])`
-/

namespace A155469.P11896733897016851101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 (A000389 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A155469.P11896733897016851101

/-! ## A155469.P13504731437811502816

`A055394(∑[A244135(n)^A000122(2*(n+2))])`
-/

namespace A155469.P13504731437811502816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244135 n : ℚ) ^ (A000122 (2 * (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A155469.P13504731437811502816

/-!
# A155471: Primes n with distinct smallest digits of n and n-th prime.

The programs for A155471, there is no canonical definition to state claims against.
-/

/-! ## A155471.P9808896338825840506

`∩[A040970(n+1), A252474(n+1)]`
-/

namespace A155471.P9808896338825840506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155471.P9808896338825840506

/-! ## A155471.P10317149222655722575

`eq[A003415(n), A175069(A347707(n))]`
-/

namespace A155471.P10317149222655722575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175069 (A347707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155471.P10317149222655722575

/-! ## A155471.P2114254034751798743

`eq[A105700(n), A348735(A073133(n+1))]`
-/

namespace A155471.P2114254034751798743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348735 (A073133 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155471.P2114254034751798743

/-! ## A155471.P8334673724856437620

`lt[A362562(n), A087748(3*(n+1))]`
-/

namespace A155471.P8334673724856437620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A155471.P8334673724856437620

/-! ## A155471.P199064366679516206

`∩[A040159(n+1), A252474(n+1)]`
-/

namespace A155471.P199064366679516206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155471.P199064366679516206

/-!
# A155472: Numbers that are the sum of 2 (not-distinct) numbers; nonzero power3 and power5, including repetitions.

The programs for A155472, there is no canonical definition to state claims against.
-/

/-! ## A155472.P14026655173205802390

`A100293(ceil(log(A000071(2*(n+2)))))`
-/

namespace A155472.P14026655173205802390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 ⌈Real.log (A000071 (2 * (n + 2)) : ℝ)⌉.toNat

end

end A155472.P14026655173205802390

/-!
# A155473: Numbers of the form x^3+y^5, with x,y>0 and x<>y.

The programs for A155473, there is no canonical definition to state claims against.
-/

/-! ## A155473.P15304508841364028234

`A155472(C(A183302(n+2), A204120(n+2)))`
-/

namespace A155473.P15304508841364028234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (Nat.choose (A183302 (n + 2)).toNat (A204120 (n + 2)).toNat)

end

end A155473.P15304508841364028234

/-! ## A155473.P14467772257410159007

`∩[A100293(n+1), A393025(n+1)]`
-/

namespace A155473.P14467772257410159007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155473.P14467772257410159007

/-! ## A155473.P15545375200778006532

`A100293(A175970(n+1)^A094848(n+1))`
-/

namespace A155473.P15545375200778006532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100293 (SequenceMachineLib.roundAway ((A175970 (n + 1) : ℚ) ^ (A094848 (n + 1) : ℤ))).toNat

end

end A155473.P15545375200778006532

/-! ## A155473.P10830476388874722662

`A155472(A175970(n+1)^A094848(n+1))`
-/

namespace A155473.P10830476388874722662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155472 (SequenceMachineLib.roundAway ((A175970 (n + 1) : ℚ) ^ (A094848 (n + 1) : ℤ))).toNat

end

end A155473.P10830476388874722662

/-!
# A155474: Odd nonprimes n with distinct smallest digits of n and n-th prime.

The programs for A155474, there is no canonical definition to state claims against.
-/

/-! ## A155474.P10041017448041147548

`∩[A294748(n+1), A347262(n+1)]`
-/

namespace A155474.P10041017448041147548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155474.P10041017448041147548

/-! ## A155474.P16436838449295295165

`record[A093178(A141468(A085736(n+1)))]`
-/

namespace A155474.P16436838449295295165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A141468 (A085736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155474.P16436838449295295165

/-! ## A155474.P14674134497356510277

`∩[A014076(n+1), A141468(A085736(n+1))]`
-/

namespace A155474.P14674134497356510277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A085736 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155474.P14674134497356510277

/-! ## A155474.P14155912552791776724

`∩[2*A047845(n+1)+1, A141468(A085736(n+1))]`
-/

namespace A155474.P14155912552791776724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047845 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A085736 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155474.P14155912552791776724

/-! ## A155474.P7659326205190968067

`∩[2*A104275(n+1)-1, A141468(A085736(n+1))]`
-/

namespace A155474.P7659326205190968067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104275 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A085736 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155474.P7659326205190968067

/-!
# A155476: Primes p such that p and the p-th prime have the same largest digit.

The programs for A155476, there is no canonical definition to state claims against.
-/

/-! ## A155476.P5075213394741346815

`p?[A061395(A117112(n+1)*A156851(n+1))]`
-/

namespace A155476.P5075213394741346815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A117112 (n + 1) * A156851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155476.P5075213394741346815

/-! ## A155476.P7747277399273951526

`p?[A061395(A156851(n+1)*A299763(n+1))]`
-/

namespace A155476.P7747277399273951526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A156851 (n + 1) * A299763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155476.P7747277399273951526

/-! ## A155476.P4396963705927965339

`p?[A061395(A156851(n+1)%A156851(2*(n+2)))]`
-/

namespace A155476.P4396963705927965339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A156851 (n + 1)) (A156851 (2 * (n + 2)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155476.P4396963705927965339

/-! ## A155476.P4657101931034263385

`p?[A061395(A156851(n+1)*A324985(n+1))]`
-/

namespace A155476.P4657101931034263385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A156851 (n + 1) * A324985 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155476.P4657101931034263385

/-!
# A155477: a(n) = 43^(2*n+1).

The programs for A155477, the canonical program `A155477.P18370412567211418717` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155477 has offset 0).

The definition of A155477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `43^(2*n+1)` (program `A155477.P18370412567211418717`, by `A155477.P18370412567211418717.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155477.P18370412567211418717

`43^(2*n+1)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155477

/-- `43^(2*n+1)` -/
def P18370412567211418717.Spec : Prop :=
  ∀ n, (P18370412567211418717.a n : ℤ) = A155477 n

theorem P18370412567211418717.correct : P18370412567211418717.Spec := by
  intro n
  simp only [A155477]

end A155477

/-! ## A155477.P4961107350992197882

`record[43^xor(1, n)]`
-/

namespace A155477.P4961107350992197882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 ^ Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155477.P4961107350992197882

namespace A155477

/-- `record[43^xor(1, n)]` -/
def P4961107350992197882.Spec : Prop :=
  ∀ n, (P4961107350992197882.a n : ℤ) = A155477 n

end A155477

/-! ## A155477.P12439370188920507447

`43*43*a(n-1)` with `a(0)=43`
-/

namespace A155477.P12439370188920507447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [43] fun n a =>
  43 * (43 * a (n - 1))

end

end A155477.P12439370188920507447

namespace A155477

/-- `43*43*a(n-1)` -/
def P12439370188920507447.Spec : Prop :=
  ∀ n, (P12439370188920507447.a n : ℤ) = A155477 n

theorem P12439370188920507447.correct : P12439370188920507447.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A155477, Nat.add_sub_cancel, A155477.P12439370188920507447.a, A155477.P18370412567211418717.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A155477, Nat.add_sub_cancel, A155477.P12439370188920507447.a, A155477.P18370412567211418717.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A155477

/-! ## A155477.P7857070548310339943

`record[43^((n+1)/2^val(n+1, 2))]`
-/

namespace A155477.P7857070548310339943
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (43 : ℝ) ^ ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155477.P7857070548310339943

namespace A155477

/-- `record[43^((n+1)/2^val(n+1, 2))]` -/
def P7857070548310339943.Spec : Prop :=
  ∀ n, P7857070548310339943.a n = (A155477 n : ℝ)

end A155477

/-! ## A155477.P5398314064797283056

`A009987(Δ[n²])`
-/

namespace A155477.P5398314064797283056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009987 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155477.P5398314064797283056

namespace A155477

/-- `A009987(Δ[n²])` -/
def P5398314064797283056.Spec : Prop :=
  ∀ n, P5398314064797283056.a n = A155477 n

end A155477

/-!
# A155478: Even composites n such that smallest digit of n > smallest digit of n-th prime.

The programs for A155478, there is no canonical definition to state claims against.
-/

/-! ## A155478.P9232817822215692082

`eq[A216178(A171572(n)), A280569(n)]`
-/

namespace A155478.P9232817822215692082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216178 (A171572 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A155478.P9232817822215692082

/-! ## A155478.P15304231344000980170

`A005843(lt[A355647(3*n+1), A000606(n)])`
-/

namespace A155478.P15304231344000980170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355647 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A155478.P15304231344000980170

/-!
# A155479: Prime(n) without odd prime digits of n.

The programs for A155479, there is no canonical definition to state claims against.
-/

/-! ## A155479.P8707681936777040006

`A000040(∩[A039136(n+1), A039138(n+2)])`
-/

namespace A155479.P8707681936777040006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A155479.P8707681936777040006

/-! ## A155479.P4315113635741727944

`p?[∑[A241918(A216762(n+1))]]`
-/

namespace A155479.P4315113635741727944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241918 (A216762 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155479.P4315113635741727944

/-! ## A155479.P912949676401289828

`p?[n-A051700(A328169(n+1))]`
-/

namespace A155479.P912949676401289828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051700 (A328169 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155479.P912949676401289828

/-! ## A155479.P9631387409893972671

`p?[n*A051700(A328169(n+2))]`
-/

namespace A155479.P9631387409893972671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051700 (A328169 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155479.P9631387409893972671

/-! ## A155479.P17796017290916307374

`record[A051698(A045276(2*n+1)%A162375(n+1))]`
-/

namespace A155479.P17796017290916307374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (Int.tmod (A045276 (2 * n + 1)) (A162375 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155479.P17796017290916307374

/-!
# A155481: Signed-digit decimal expansion of Pi.

The programs for A155481, there is no canonical definition to state claims against.
-/

/-! ## A155481.P2728429737022463217

`A019692(n)-A000796(n)`
-/

namespace A155481.P2728429737022463217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - A000796 (n + 1)

end

end A155481.P2728429737022463217

/-! ## A155481.P202997464598356435

`A019692(n)-Δ[A059582(n)]`
-/

namespace A155481.P202997464598356435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - (f1 (n + 1) - f1 n)

end

end A155481.P202997464598356435

/-! ## A155481.P13884464318940949346

`A019692(n)-(9-A030644(n))`
-/

namespace A155481.P13884464318940949346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - (9 - A030644 (n + 1))

end

end A155481.P13884464318940949346

/-! ## A155481.P6851724768958465673

`A019692(n)-A001355(Δ[n²])`
-/

namespace A155481.P6851724768958465673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155481.P6851724768958465673

/-! ## A155481.P8615123242722075228

`A019692(n)-A110766(Δ[n²])`
-/

namespace A155481.P8615123242722075228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A155481.P8615123242722075228

/-! ## A155481.P4494078631535681118

`A019692(n)+1-A123152(n+1)`
-/

namespace A155481.P4494078631535681118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) + (1 - A123152 (n + 1))

end

end A155481.P4494078631535681118

/-! ## A155481.P4149487970493714556

`A019692(n)-A065253(n+1)%10`
-/

namespace A155481.P4149487970493714556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - Int.tmod (A065253 (n + 1)) 10

end

end A155481.P4149487970493714556

/-! ## A155481.P3803543795747529500

`A019692(n)-A010879(A065253(n+1))`
-/

namespace A155481.P3803543795747529500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019692 (n + 1) - A010879 (A065253 (n + 1)).toNat

end

end A155481.P3803543795747529500

/-!
# A155482: Signed-digit binary expansion of Pi/4.

The programs for A155482, there is no canonical definition to state claims against.
-/

/-! ## A155482.P11438532515039059932

`Δ[char[A004711(n+1)]]`
-/

namespace A155482.P11438532515039059932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155482.P11438532515039059932

/-! ## A155482.P11684731965430881683

`floor(acot(n))-Δ[A180433(A028310(n))]`
-/

namespace A155482.P11684731965430881683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - (f1 (n + 1) - f1 n)

end

end A155482.P11684731965430881683

/-! ## A155482.P14435452251781561621

`A004601(n+2)-char[A004711(n+1)]`
-/

namespace A155482.P14435452251781561621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A155482.P14435452251781561621

/-! ## A155482.P1811651254129372248

`1-(A180433(n+1)+char[A004711(n+1)])`
-/

namespace A155482.P1811651254129372248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004711 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A180433 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A155482.P1811651254129372248

/-! ## A155482.P14824464075630442271

`Δ[A004601(A006370(A103517(n)))]`
-/

namespace A155482.P14824464075630442271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (A006370 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155482.P14824464075630442271

/-! ## A155482.P17351072924205621868

`Δ[char[A332929(n+1)]]`
-/

namespace A155482.P17351072924205621868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332929 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A155482.P17351072924205621868

/-!
# A155483: a(n)=A000040(A043489(n+1)).

The programs for A155483, the canonical program `A155483.P2954066192730330164` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155483 has offset 1).

The definition of A155483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A043489, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A155483.P2954066192730330164

`A000040(A043489(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A155483

/-- `A000040(A043489(n+2))` -/
def P2954066192730330164.Spec : Prop :=
  ∀ n, P2954066192730330164.a n = A155483 (n + 1)

theorem P2954066192730330164.correct : P2954066192730330164.Spec := by
  intro n
  simp only [A155483, Nat.add_sub_cancel]

end A155483

/-! ## A155483.P2528451132936077976

`A008578(A043489(n+2)+1)`
-/

namespace A155483.P2528451132936077976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A043489 (n + 2) + 1).toNat

end

end A155483.P2528451132936077976

namespace A155483

/-- `A008578(A043489(n+2)+1)` -/
def P2528451132936077976.Spec : Prop :=
  ∀ n, P2528451132936077976.a n = A155483 (n + 1)

end A155483

/-! ## A155483.P12719218256445215576

`A116974(A043489(n+2)+1)`
-/

namespace A155483.P12719218256445215576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (A043489 (n + 2) + 1).toNat

end

end A155483.P12719218256445215576

namespace A155483

/-- `A116974(A043489(n+2)+1)` -/
def P12719218256445215576.Spec : Prop :=
  ∀ n, P12719218256445215576.a n = A155483 (n + 1)

end A155483

/-! ## A155483.P2844756658980563401

`A175787(A043489(n+2)+1)`
-/

namespace A155483.P2844756658980563401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A043489 (n + 2) + 1).toNat

end

end A155483.P2844756658980563401

namespace A155483

/-- `A175787(A043489(n+2)+1)` -/
def P2844756658980563401.Spec : Prop :=
  ∀ n, P2844756658980563401.a n = A155483 (n + 1)

end A155483

/-! ## A155483.P17497034755668925416

`p?[A008578(n+1)*A055641(n)]`
-/

namespace A155483.P17497034755668925416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A055641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155483.P17497034755668925416

namespace A155483

/-- `p?[A008578(n+1)*A055641(n)]` -/
def P17497034755668925416.Spec : Prop :=
  ∀ n, P17497034755668925416.a n = A155483 (n + 1)

end A155483

/-!
# A155485: a(n) = 5^n + (1 - 4^n)/3.

The programs for A155485, the canonical program `A155485.P14130377741631838043` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155485 has offset 0).

The definition of A155485 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155485.P6444491835900688728

`ogf((1-6x+9x^2)/(1-10x+29x^2-20x^3))`
-/

namespace A155485.P6444491835900688728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 9] [1, -10, 29, -20] n

end

end A155485.P6444491835900688728

namespace A155485

/-- `ogf((1-6x+9x^2)/(1-10x+29x^2-20x^3))` -/
def P6444491835900688728.Spec : Prop :=
  ∀ n, P6444491835900688728.a n = A155485 n

end A155485

/-! ## A155485.P14130377741631838043

`5^n+(1-4^n)/3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155485

/-- `5^n+(1-4^n)/3` -/
def P14130377741631838043.Spec : Prop :=
  ∀ n, P14130377741631838043.a n = (A155485 n : ℚ)

end A155485

/-! ## A155485.P7294063357450261947

`abs(5^n-A002450(n))`
-/

namespace A155485.P7294063357450261947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(5 ^ n : ℤ) - A002450 n|

end

end A155485.P7294063357450261947

namespace A155485

/-- `abs(5^n-A002450(n))` -/
def P7294063357450261947.Spec : Prop :=
  ∀ n, P7294063357450261947.a n = A155485 n

end A155485

/-! ## A155485.P11788506479596055795

`∑{#}[n, C(n, #)*A093834(#)]`
-/

namespace A155485.P11788506479596055795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A093834 k

end

end A155485.P11788506479596055795

namespace A155485

/-- `∑{#}[n, C(n, #)*A093834(#)]` -/
def P11788506479596055795.Spec : Prop :=
  ∀ n, P11788506479596055795.a n = A155485 n

end A155485

/-! ## A155485.P9101230807360970698

`abs(A000351(n)-round(4^n/3))`
-/

namespace A155485.P9101230807360970698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - SequenceMachineLib.roundAway ((4 ^ n : ℚ) / 3)|

end

end A155485.P9101230807360970698

namespace A155485

/-- `abs(A000351(n)-round(4^n/3))` -/
def P9101230807360970698.Spec : Prop :=
  ∀ n, P9101230807360970698.a n = A155485 n

end A155485

/-! ## A155485.P12681499606161057044

`abs(A002450(n)-A000351(n))`
-/

namespace A155485.P12681499606161057044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002450 n - A000351 n|

end

end A155485.P12681499606161057044

namespace A155485

/-- `abs(A002450(n)-A000351(n))` -/
def P12681499606161057044.Spec : Prop :=
  ∀ n, P12681499606161057044.a n = A155485 n

end A155485

/-! ## A155485.P1268792995293653735

`record[A056451(n)-A000975(n)]`
-/

namespace A155485.P1268792995293653735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 n - A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155485.P1268792995293653735

namespace A155485

/-- `record[A056451(n)-A000975(n)]` -/
def P1268792995293653735.Spec : Prop :=
  ∀ n, P1268792995293653735.a n = A155485 n

end A155485

/-! ## A155485.P17054922455326148436

`∑[A005054(n)-A131577(n)²]`
-/

namespace A155485.P17054922455326148436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n - A131577 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155485.P17054922455326148436

namespace A155485

/-- `∑[A005054(n)-A131577(n)²]` -/
def P17054922455326148436.Spec : Prop :=
  ∀ n, P17054922455326148436.a n = A155485 n

end A155485

/-! ## A155485.P12189641846302131775

`record[A074872(n+1)-A001045(n)]`
-/

namespace A155485.P12189641846302131775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1) - A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155485.P12189641846302131775

namespace A155485

/-- `record[A074872(n+1)-A001045(n)]` -/
def P12189641846302131775.Spec : Prop :=
  ∀ n, P12189641846302131775.a n = A155485 n

end A155485

/-!
# A155487: Difference between n-th composite number and twice its least prime factor.

The programs for A155487, there is no canonical definition to state claims against.
-/

/-! ## A155487.P18422772076465617877

`A085271(n+1)-A056608(n+1)`
-/

namespace A155487.P18422772076465617877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085271 (n + 1) - A056608 (n + 1)

end

end A155487.P18422772076465617877

/-! ## A155487.P10310372787808964755

`A002808(n+1)-2*A056608(n+1)`
-/

namespace A155487.P10310372787808964755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 2 * A056608 (n + 1)

end

end A155487.P10310372787808964755

/-! ## A155487.P9373053450354155784

`(A160180(n+1)-2)*A056608(n+1)`
-/

namespace A155487.P9373053450354155784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) - 2) * A056608 (n + 1)

end

end A155487.P9373053450354155784

/-! ## A155487.P12883388254004358147

`A018252(n+2)-2*A056608(n+1)`
-/

namespace A155487.P12883388254004358147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - 2 * A056608 (n + 1)

end

end A155487.P12883388254004358147

/-! ## A155487.P9147245190095452610

`comp[C(A020639(n+1), n)]-2*A056608(n+1)`
-/

namespace A155487.P9147245190095452610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - 2 * A056608 (n + 1)

end

end A155487.P9147245190095452610

/-! ## A155487.P9615682438328610916

`lt[1, A001222(n+1)]+1-2*A056608(n+1)`
-/

namespace A155487.P9615682438328610916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - 2 * A056608 (n + 1)

end

end A155487.P9615682438328610916

/-! ## A155487.P13048205916200135965

`lt[2, A000005(n+1)]+1-2*A056608(n+1)`
-/

namespace A155487.P13048205916200135965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - 2 * A056608 (n + 1)

end

end A155487.P13048205916200135965

/-! ## A155487.P3965730179943232973

`lt[A000010(n+1), n]+1-2*A056608(n+1)`
-/

namespace A155487.P3965730179943232973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - 2 * A056608 (n + 1)

end

end A155487.P3965730179943232973

/-! ## A155487.P13625844590218915641

`A018252(n+2)-A004277(p?[A107286(n)])`
-/

namespace A155487.P13625844590218915641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A004277 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A155487.P13625844590218915641

/-! ## A155487.P5964234200905641175

`A046666(A002808(n+1))-A056608(n+1)`
-/

namespace A155487.P5964234200905641175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A002808 (n + 1)).toNat - A056608 (n + 1)

end

end A155487.P5964234200905641175

/-!
# A155488: Primes p with property that p^2 is of the form x^2 + 40y^2.

The programs for A155488, there is no canonical definition to state claims against.
-/

/-! ## A155488.P17093962543306958779

`A293859(n+3)`
-/

namespace A155488.P17093962543306958779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (n + 3)

end

end A155488.P17093962543306958779

/-! ## A155488.P13358810863956804816

`record[A293859(A258451(n))]`
-/

namespace A155488.P13358810863956804816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293859 (A258451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155488.P13358810863956804816

/-! ## A155488.P12142734595012093915

`p?[A155501(n+1)]`
-/

namespace A155488.P12142734595012093915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155488.P12142734595012093915

/-! ## A155488.P14720470990588097674

`filter[A155501(n+1), A010051(#)]`
-/

namespace A155488.P14720470990588097674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A155488.P14720470990588097674

/-! ## A155488.P342628197140282119

`record[A006530(2*A155501(n+1))]`
-/

namespace A155488.P342628197140282119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A155501 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155488.P342628197140282119

/-! ## A155488.P5705814385675559761

`record[A006530(lcm(2, A155501(n+1)))]`
-/

namespace A155488.P5705814385675559761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A155501 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A155488.P5705814385675559761

/-! ## A155488.P4542772951409624828

`∩[A000040(n+1), A155501(n+1)]`
-/

namespace A155488.P4542772951409624828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P4542772951409624828

/-! ## A155488.P13582719613309681999

`∩[A004139(n+1), A155501(n+1)]`
-/

namespace A155488.P13582719613309681999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P13582719613309681999

/-! ## A155488.P8445086854642762672

`∩[A006005(n+1), A155501(n+1)]`
-/

namespace A155488.P8445086854642762672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P8445086854642762672

/-! ## A155488.P2632331347865428150

`∩[A008578(n+1), A155501(n+1)]`
-/

namespace A155488.P2632331347865428150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P2632331347865428150

/-! ## A155488.P3729844707899814015

`∩[A045319(n+1), A155501(n+1)]`
-/

namespace A155488.P3729844707899814015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P3729844707899814015

/-! ## A155488.P17695414487881515451

`∩[A045344(n+1), A155501(n+1)]`
-/

namespace A155488.P17695414487881515451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P17695414487881515451

/-! ## A155488.P7478255073872337335

`∩[A046022(n+1), A155501(n+1)]`
-/

namespace A155488.P7478255073872337335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P7478255073872337335

/-! ## A155488.P2764161770221503883

`∩[A065091(n+1), A155501(n+1)]`
-/

namespace A155488.P2764161770221503883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P2764161770221503883

/-! ## A155488.P18060083171812086189

`∩[A066050(n+1), A155501(n+1)]`
-/

namespace A155488.P18060083171812086189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P18060083171812086189

/-! ## A155488.P8626459635788334436

`∩[A066542(n+1), A155501(n+1)]`
-/

namespace A155488.P8626459635788334436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P8626459635788334436

/-! ## A155488.P13315869739924548945

`∩[A067126(n+1), A155501(n+1)]`
-/

namespace A155488.P13315869739924548945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P13315869739924548945

/-! ## A155488.P450477856415631537

`∩[A067133(n+1), A155501(n+1)]`
-/

namespace A155488.P450477856415631537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P450477856415631537

/-! ## A155488.P16339577842036763489

`∩[A083249(n+1), A155501(n+1)]`
-/

namespace A155488.P16339577842036763489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P16339577842036763489

/-! ## A155488.P2010061592378458942

`∩[A116974(n+1), A155501(n+1)]`
-/

namespace A155488.P2010061592378458942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155488.P2010061592378458942

/-!
# A155489: Primes p such that p and prime(p) have an odd largest digit.

The programs for A155489, there is no canonical definition to state claims against.
-/

/-! ## A155489.P4451980029211878272

`∩[A155058(n+1), A155113(n+1)]`
-/

namespace A155489.P4451980029211878272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A155489.P4451980029211878272

/-! ## A155489.P15638182044479444571

`p?[A210253(n)+A175427(n+1)]`
-/

namespace A155489.P15638182044479444571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210253 n + A175427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155489.P15638182044479444571

/-! ## A155489.P15621431934241319655

`p?[∑[A036583(A000123(n))]]`
-/

namespace A155489.P15621431934241319655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036583 (A000123 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A155489.P15621431934241319655

/-! ## A155489.P2153346326233162602

`p?[lt[A205573(n), A205555(3*n+2)]]`
-/

namespace A155489.P2153346326233162602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205573 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205555 (3 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A155489.P2153346326233162602

/-! ## A155489.P4720450194559957340

`A000040(record[A069464(n+1)+1])`
-/

namespace A155489.P4720450194559957340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069464 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A155489.P4720450194559957340

/-!
# A155491: Triangle T(n, k) = binomial(n+1, k)*A142458(n+1, k+1)/(k+1), read by rows.

The programs for A155491, the canonical program `A155491.P1899759853009154862` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155491 has offset 0).

The definition of A155491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155491.P1899759853009154862

`C(row(n)+1, col(n))*A142458(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155491

/-- `C(row(n)+1, col(n))*A142458(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)` -/
def P1899759853009154862.Spec : Prop :=
  ∀ n, P1899759853009154862.a n = (A155491 n : ℚ)

end A155491

/-! ## A155491.P14834440519157360056

`A142458(n+1)/A155495(n)*A155497(n)`
-/

namespace A155491.P14834440519157360056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155497 n : ℚ)

end

end A155491.P14834440519157360056

namespace A155491

/-- `A142458(n+1)/A155495(n)*A155497(n)` -/
def P14834440519157360056.Spec : Prop :=
  ∀ n, P14834440519157360056.a n = (A155491 n : ℚ)

end A155491

/-! ## A155491.P14765593491354471226

`A001263(n+1)/A007318(n)*A142458(n+1)`
-/

namespace A155491.P14765593491354471226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A142458 (n + 1) : ℚ)

end

end A155491.P14765593491354471226

namespace A155491

/-- `A001263(n+1)/A007318(n)*A142458(n+1)` -/
def P14765593491354471226.Spec : Prop :=
  ∀ n, P14765593491354471226.a n = (A155491 n : ℚ)

end A155491

/-! ## A155491.P4035335686735774778

`A142458(n+1)/A002260(n+1)*A074909(n)`
-/

namespace A155491.P4035335686735774778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A074909 n : ℚ)

end

end A155491.P4035335686735774778

namespace A155491

/-- `A142458(n+1)/A002260(n+1)*A074909(n)` -/
def P4035335686735774778.Spec : Prop :=
  ∀ n, P4035335686735774778.a n = (A155491 n : ℚ)

end A155491

/-! ## A155491.P3409455861962974491

`A142458(n+1)/A008292(n+1)*A155467(n)`
-/

namespace A155491.P3409455861962974491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A155467 n : ℚ)

end

end A155491.P3409455861962974491

namespace A155491

/-- `A142458(n+1)/A008292(n+1)*A155467(n)` -/
def P3409455861962974491.Spec : Prop :=
  ∀ n, P3409455861962974491.a n = (A155491 n : ℚ)

end A155491

/-! ## A155491.P17483683634358367883

`A142458(n+1)/A142459(n+1)*A155493(n)`
-/

namespace A155491.P17483683634358367883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142458 (n + 1) : ℚ) / (A142459 (n + 1) : ℚ) * (A155493 n : ℚ)

end

end A155491.P17483683634358367883

namespace A155491

/-- `A142458(n+1)/A142459(n+1)*A155493(n)` -/
def P17483683634358367883.Spec : Prop :=
  ∀ n, P17483683634358367883.a n = (A155491 n : ℚ)

end A155491

/-!
# A155493: Triangle T(n, k) = binomial(n+1, k)*A142459(n+1, k+1)/(k+1), read by rows.

The programs for A155493, the canonical program `A155493.P5408496949512889524` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155493 has offset 0).

The definition of A155493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155493.P5408496949512889524

`C(row(n)+1, col(n))*A142459(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155493

/-- `C(row(n)+1, col(n))*A142459(C(row(n)+1, 2)+col(n)+1)/(col(n)+1)` -/
def P5408496949512889524.Spec : Prop :=
  ∀ n, P5408496949512889524.a n = (A155493 n : ℚ)

end A155493

/-! ## A155493.P3734182141277504547

`A142459(n+1)/A155495(n)*A155497(n)`
-/

namespace A155493.P3734182141277504547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A155495 n : ℚ) * (A155497 n : ℚ)

end

end A155493.P3734182141277504547

namespace A155493

/-- `A142459(n+1)/A155495(n)*A155497(n)` -/
def P3734182141277504547.Spec : Prop :=
  ∀ n, P3734182141277504547.a n = (A155493 n : ℚ)

end A155493

/-! ## A155493.P7451188191904311774

`A142459(n+1)/A002260(n+1)*A074909(n)`
-/

namespace A155493.P7451188191904311774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A074909 n : ℚ)

end

end A155493.P7451188191904311774

namespace A155493

/-- `A142459(n+1)/A002260(n+1)*A074909(n)` -/
def P7451188191904311774.Spec : Prop :=
  ∀ n, P7451188191904311774.a n = (A155493 n : ℚ)

end A155493

/-! ## A155493.P7265210121958435846

`A142459(n+1)/A008292(n+1)*A155467(n)`
-/

namespace A155493.P7265210121958435846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A155467 n : ℚ)

end

end A155493.P7265210121958435846

namespace A155493

/-- `A142459(n+1)/A008292(n+1)*A155467(n)` -/
def P7265210121958435846.Spec : Prop :=
  ∀ n, P7265210121958435846.a n = (A155493 n : ℚ)

end A155493

/-! ## A155493.P9340458664606141640

`A142459(n+1)/A142458(n+1)*A155491(n)`
-/

namespace A155493.P9340458664606141640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142459 (n + 1) : ℚ) / (A142458 (n + 1) : ℚ) * (A155491 n : ℚ)

end

end A155493.P9340458664606141640

namespace A155493

/-- `A142459(n+1)/A142458(n+1)*A155491(n)` -/
def P9340458664606141640.Spec : Prop :=
  ∀ n, P9340458664606141640.a n = (A155493 n : ℚ)

end A155493

/-! ## A155493.P5158821509571487393

`A155491(n)/A257616(n)*A257618(n)`
-/

namespace A155493.P5158821509571487393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155491 n : ℚ) / (A257616 n : ℚ) * (A257618 n : ℚ)

end

end A155493.P5158821509571487393

namespace A155493

/-- `A155491(n)/A257616(n)*A257618(n)` -/
def P5158821509571487393.Spec : Prop :=
  ∀ n, P5158821509571487393.a n = (A155493 n : ℚ)

end A155493

/-!
# A155494: Triangle T(n, k) = (k+1)*(n-k+1)*binomial(n,k) with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A155494, the canonical program `A155494.P8927190747223662045` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155494 has offset 0).

The definition of A155494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155494.P8927190747223662045

`gcd(A103452(n), A141611(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155494

/-- `gcd(A103452(n), A141611(n))` -/
def P8927190747223662045.Spec : Prop :=
  ∀ n, (P8927190747223662045.a n : ℤ) = A155494 n

theorem P8927190747223662045.correct : P8927190747223662045.Spec := by
  intro n
  simp only [A155494]

end A155494

/-! ## A155494.P9692878831698258414

`ceil(A141611(n)/A131843(n))`
-/

namespace A155494.P9692878831698258414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A141611 n : ℚ) / (A131843 n : ℚ)⌉

end

end A155494.P9692878831698258414

namespace A155494

/-- `ceil(A141611(n)/A131843(n))` -/
def P9692878831698258414.Spec : Prop :=
  ∀ n, P9692878831698258414.a n = A155494 n

end A155494

/-! ## A155494.P8534998363772184591

`A141611(n)-A144217(n+1)`
-/

namespace A155494.P8534998363772184591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - A144217 (n + 1)

end

end A155494.P8534998363772184591

namespace A155494

/-- `A141611(n)-A144217(n+1)` -/
def P8534998363772184591.Spec : Prop :=
  ∀ n, P8534998363772184591.a n = A155494 n

end A155494

/-! ## A155494.P14522227467608934888

`A141611(n)/A131821(n+1)`
-/

namespace A155494.P14522227467608934888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A131821 (n + 1) : ℚ)

end

end A155494.P14522227467608934888

namespace A155494

/-- `A141611(n)/A131821(n+1)` -/
def P14522227467608934888.Spec : Prop :=
  ∀ n, P14522227467608934888.a n = (A155494 n : ℚ)

end A155494

/-! ## A155494.P11822645896360512154

`A141611(n)-val(A131816(n), 2)`
-/

namespace A155494.P11822645896360512154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141611 n - (SequenceMachineLib.valuation (A131816 n).toNat 2 : ℤ)

end

end A155494.P11822645896360512154

namespace A155494

/-- `A141611(n)-val(A131816(n), 2)` -/
def P11822645896360512154.Spec : Prop :=
  ∀ n, P11822645896360512154.a n = A155494 n

end A155494

/-! ## A155494.P16947813680969477829

`A141611(n)/A001511(A131816(n))`
-/

namespace A155494.P16947813680969477829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141611 n : ℚ) / (A001511 (A131816 n).toNat : ℚ)

end

end A155494.P16947813680969477829

namespace A155494

/-- `A141611(n)/A001511(A131816(n))` -/
def P16947813680969477829.Spec : Prop :=
  ∀ n, P16947813680969477829.a n = (A155494 n : ℚ)

end A155494

/-!
# A155495: Triangle read by rows: t(n,m) = binomial(2*n,2*m) * binomial(n,m).

The programs for A155495, the canonical program `A155495.P18062586001763959282` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155495 has offset 0).

The definition of A155495 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(2*row(n), 2*col(n))*C(row(n), col(n))` (program `A155495.P18062586001763959282`, by `A155495.P18062586001763959282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155495.P18062586001763959282

`C(2*row(n), 2*col(n))*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155495

/-- `C(2*row(n), 2*col(n))*C(row(n), col(n))` -/
def P18062586001763959282.Spec : Prop :=
  ∀ n, (P18062586001763959282.a n : ℤ) = A155495 n

theorem P18062586001763959282.correct : P18062586001763959282.Spec := by
  intro n
  simp only [A155495]

end A155495

/-! ## A155495.P3564649720700251627

`C(2*row(n), 2*col(n))*A007318(n)`
-/

namespace A155495.P3564649720700251627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n) : ℤ) * A007318 n

end

end A155495.P3564649720700251627

namespace A155495

/-- `C(2*row(n), 2*col(n))*A007318(n)` -/
def P3564649720700251627.Spec : Prop :=
  ∀ n, P3564649720700251627.a n = A155495 n

theorem P3564649720700251627.correct : P3564649720700251627.Spec := by
  intro n
  simp only [A155495, Nat.add_sub_cancel, A155495.P3564649720700251627.a, A155495.P18062586001763959282.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155495

/-! ## A155495.P14503625525191731558

`A007318(n)*A086645(n)`
-/

namespace A155495.P14503625525191731558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086645 n

end

end A155495.P14503625525191731558

namespace A155495

/-- `A007318(n)*A086645(n)` -/
def P14503625525191731558.Spec : Prop :=
  ∀ n, P14503625525191731558.a n = A155495 n

theorem P14503625525191731558.correct : P14503625525191731558.Spec := by
  intro n
  simp only [A155495, Nat.add_sub_cancel, A155495.P14503625525191731558.a, A155495.P18062586001763959282.a, A007318, A007318.P11755526479805562006.a, A086645, A086645.P9025650328271512864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155495

/-! ## A155495.P411615270510201669

`abs(A086645(n)*A108086(n))`
-/

namespace A155495.P411615270510201669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086645 n * A108086 n|

end

end A155495.P411615270510201669

namespace A155495

/-- `abs(A086645(n)*A108086(n))` -/
def P411615270510201669.Spec : Prop :=
  ∀ n, P411615270510201669.a n = A155495 n

end A155495

/-! ## A155495.P16217320547541601300

`sqrt(A008459(n))*A086645(n)`
-/

namespace A155495.P16217320547541601300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A086645 n : ℝ)

end

end A155495.P16217320547541601300

namespace A155495

/-- `sqrt(A008459(n))*A086645(n)` -/
def P16217320547541601300.Spec : Prop :=
  ∀ n, P16217320547541601300.a n = (A155495 n : ℝ)

end A155495

/-! ## A155495.P13761000867299795164

`Δ[A102363(n)]*A086645(n)`
-/

namespace A155495.P13761000867299795164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A086645 n

end

end A155495.P13761000867299795164

namespace A155495

/-- `Δ[A102363(n)]*A086645(n)` -/
def P13761000867299795164.Spec : Prop :=
  ∀ n, P13761000867299795164.a n = A155495 n

end A155495

/-! ## A155495.P10148774489576850577

`(A014473(n)+1)*A086645(n)`
-/

namespace A155495.P10148774489576850577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A086645 n

end

end A155495.P10148774489576850577

namespace A155495

/-- `(A014473(n)+1)*A086645(n)` -/
def P10148774489576850577.Spec : Prop :=
  ∀ n, P10148774489576850577.a n = A155495 n

end A155495

/-! ## A155495.P14094875075009247697

`A028326(n)/2*A086645(n)`
-/

namespace A155495.P14094875075009247697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A086645 n : ℚ)

end

end A155495.P14094875075009247697

namespace A155495

/-- `A028326(n)/2*A086645(n)` -/
def P14094875075009247697.Spec : Prop :=
  ∀ n, P14094875075009247697.a n = (A155495 n : ℚ)

theorem P14094875075009247697.correct : P14094875075009247697.Spec := by
  intro n
  simp only [A155495, Nat.add_sub_cancel, A155495.P14094875075009247697.a, A155495.P18062586001763959282.a, A028326, A028326.P7676793339942299677.a, A086645, A086645.P9025650328271512864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155495

/-! ## A155495.P12262851233599455131

`A086645(n)*A097805(comp[∑[n]])`
-/

namespace A155495.P12262851233599455131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A097805 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A155495.P12262851233599455131

namespace A155495

/-- `A086645(n)*A097805(comp[∑[n]])` -/
def P12262851233599455131.Spec : Prop :=
  ∀ n, P12262851233599455131.a n = A155495 n

end A155495

/-! ## A155495.P1111637041524751135

`A086645(n)*A135225(comp[∑[n]])`
-/

namespace A155495.P1111637041524751135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A135225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A155495.P1111637041524751135

namespace A155495

/-- `A086645(n)*A135225(comp[∑[n]])` -/
def P1111637041524751135.Spec : Prop :=
  ∀ n, P1111637041524751135.a n = A155495 n

end A155495

/-! ## A155495.P4000725316178381009

`abs((2-A173740(n))*A086645(n))`
-/

namespace A155495.P4000725316178381009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 - A173740 n) * A086645 n|

end

end A155495.P4000725316178381009

namespace A155495

/-- `abs((2-A173740(n))*A086645(n))` -/
def P4000725316178381009.Spec : Prop :=
  ∀ n, P4000725316178381009.a n = A155495 n

end A155495

/-! ## A155495.P13270617847827996013

`ceil(A109128(n)/2)*A086645(n)`
-/

namespace A155495.P13270617847827996013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A086645 n

end

end A155495.P13270617847827996013

namespace A155495

/-- `ceil(A109128(n)/2)*A086645(n)` -/
def P13270617847827996013.Spec : Prop :=
  ∀ n, P13270617847827996013.a n = A155495 n

end A155495

/-! ## A155495.P8310487114644263776

`(A028276(n)-A028263(n))*A086645(n)`
-/

namespace A155495.P8310487114644263776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028276 n - A028263 n) * A086645 n

end

end A155495.P8310487114644263776

namespace A155495

/-- `(A028276(n)-A028263(n))*A086645(n)` -/
def P8310487114644263776.Spec : Prop :=
  ∀ n, P8310487114644263776.a n = A155495 n

theorem P8310487114644263776.correct : P8310487114644263776.Spec := by
  intro n
  simp only [A155495, Nat.add_sub_cancel, A155495.P8310487114644263776.a, A155495.P18062586001763959282.a, A028263, A028263.P3177418721069471964.a, A028276, A028276.P15109551320821074576.a, A086645, A086645.P9025650328271512864.a, A007318, A007318.P11755526479805562006.a, A014430, A014430.P2601729842851247134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A155495

/-! ## A155495.P8452808283459663256

`A007318(n)*A034839(A061885(n))`
-/

namespace A155495.P8452808283459663256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A034839 (A061885 n).toNat

end

end A155495.P8452808283459663256

namespace A155495

/-- `A007318(n)*A034839(A061885(n))` -/
def P8452808283459663256.Spec : Prop :=
  ∀ n, P8452808283459663256.a n = A155495 n

end A155495

/-! ## A155495.P3420662856288927171

`A069466(n)/A068555(n)`
-/

namespace A155495.P3420662856288927171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A068555 n : ℚ)

end

end A155495.P3420662856288927171

namespace A155495

/-- `A069466(n)/A068555(n)` -/
def P3420662856288927171.Spec : Prop :=
  ∀ n, P3420662856288927171.a n = (A155495 n : ℚ)

end A155495

/-! ## A155495.P13700553701847315691

`A007318(A185868(n+1)-1)*A007318(n)`
-/

namespace A155495.P13700553701847315691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A185868 (n + 1) - 1).toNat * A007318 n

end

end A155495.P13700553701847315691

namespace A155495

/-- `A007318(A185868(n+1)-1)*A007318(n)` -/
def P13700553701847315691.Spec : Prop :=
  ∀ n, P13700553701847315691.a n = A155495 n

end A155495

/-! ## A155495.P492965592683376375

`A007318(eq[1, A327571(n+2)])*A007318(n)`
-/

namespace A155495.P492965592683376375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327571 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A007318 n

end

end A155495.P492965592683376375

namespace A155495

/-- `A007318(eq[1, A327571(n+2)])*A007318(n)` -/
def P492965592683376375.Spec : Prop :=
  ∀ n, P492965592683376375.a n = A155495 n

end A155495

/-! ## A155495.P13600301353820908268

`A007318(lt[A327571(n+2), 2])*A007318(n)`
-/

namespace A155495.P13600301353820908268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327571 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) * A007318 n

end

end A155495.P13600301353820908268

namespace A155495

/-- `A007318(lt[A327571(n+2), 2])*A007318(n)` -/
def P13600301353820908268.Spec : Prop :=
  ∀ n, P13600301353820908268.a n = A155495 n

end A155495

/-! ## A155495.P18047980175008194745

`A086645(n)*A110654(A028326(n))`
-/

namespace A155495.P18047980175008194745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n * A110654 (A028326 n).toNat

end

end A155495.P18047980175008194745

namespace A155495

/-- `A086645(n)*A110654(A028326(n))` -/
def P18047980175008194745.Spec : Prop :=
  ∀ n, P18047980175008194745.a n = A155495 n

end A155495

/-!
# A155497: Triangle T(n, k) = binomial(n, k)*binomial(n+1, k+1)*binomial(2*n, 2*k)/(n-k+1), read by rows.

The programs for A155497, the canonical program `A155497.P6960817488687980034` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155497 has offset 0).

The definition of A155497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A155497.P6960817488687980034

`C(2*row(n), 2*col(n))*A103371(C(row(n)+1, 2)+col(n))/(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155497

/-- `C(2*row(n), 2*col(n))*A103371(C(row(n)+1, 2)+col(n))/(row(n)-col(n)+1)` -/
def P6960817488687980034.Spec : Prop :=
  ∀ n, P6960817488687980034.a n = (A155497 n : ℚ)

end A155497

/-! ## A155497.P5528436175458581706

`A001263(n+1)*A086645(n)`
-/

namespace A155497.P5528436175458581706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A086645 n

end

end A155497.P5528436175458581706

namespace A155497

/-- `A001263(n+1)*A086645(n)` -/
def P5528436175458581706.Spec : Prop :=
  ∀ n, P5528436175458581706.a n = A155497 n

end A155497

/-! ## A155497.P3455040878369279056

`sqrt(A174158(n+1))*A086645(n)`
-/

namespace A155497.P3455040878369279056
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A174158 (n + 1) : ℝ) * (A086645 n : ℝ)

end

end A155497.P3455040878369279056

namespace A155497

/-- `sqrt(A174158(n+1))*A086645(n)` -/
def P3455040878369279056.Spec : Prop :=
  ∀ n, P3455040878369279056.a n = (A155497 n : ℝ)

end A155497

/-! ## A155497.P16435273468613843134

`A088617(n)/A009766(n)*A155495(n)`
-/

namespace A155497.P16435273468613843134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088617 n : ℚ) / (A009766 n : ℚ) * (A155495 n : ℚ)

end

end A155497.P16435273468613843134

namespace A155497

/-- `A088617(n)/A009766(n)*A155495(n)` -/
def P16435273468613843134.Spec : Prop :=
  ∀ n, P16435273468613843134.a n = (A155497 n : ℚ)

end A155497

/-! ## A155497.P9905666640463753494

`A132813(n)/A103406(n)*A155495(n)`
-/

namespace A155497.P9905666640463753494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132813 n : ℚ) / (A103406 n : ℚ) * (A155495 n : ℚ)

end

end A155497.P9905666640463753494

namespace A155497

/-- `A132813(n)/A103406(n)*A155495(n)` -/
def P9905666640463753494.Spec : Prop :=
  ∀ n, P9905666640463753494.a n = (A155497 n : ℚ)

end A155497

/-! ## A155497.P4548947314689891773

`A001263(n+1)*A097805(A185869(n+1))`
-/

namespace A155497.P4548947314689891773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A097805 (A185869 (n + 1)).toNat

end

end A155497.P4548947314689891773

namespace A155497

/-- `A001263(n+1)*A097805(A185869(n+1))` -/
def P4548947314689891773.Spec : Prop :=
  ∀ n, P4548947314689891773.a n = A155497 n

end A155497

/-! ## A155497.P7298888474007077463

`A001263(n+1)/A007318(n)*A155495(n)`
-/

namespace A155497.P7298888474007077463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A155495 n : ℚ)

end

end A155497.P7298888474007077463

namespace A155497

/-- `A001263(n+1)/A007318(n)*A155495(n)` -/
def P7298888474007077463.Spec : Prop :=
  ∀ n, P7298888474007077463.a n = (A155497 n : ℚ)

end A155497

/-! ## A155497.P9594928806640120145

`A155491(n)/A142458(n+1)*A155495(n)`
-/

namespace A155497.P9594928806640120145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155491 n : ℚ) / (A142458 (n + 1) : ℚ) * (A155495 n : ℚ)

end

end A155497.P9594928806640120145

namespace A155497

/-- `A155491(n)/A142458(n+1)*A155495(n)` -/
def P9594928806640120145.Spec : Prop :=
  ∀ n, P9594928806640120145.a n = (A155497 n : ℚ)

end A155497

/-!
# A155498: Number of odd digits in the concatenation of first n primes.

The programs for A155498, the canonical program `A155498.P7656764821816016428` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155498 has offset 1).

The definition of A155498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A155498.P14710607457572497400

`∑[A104638(n+1)]`
-/

namespace A155498.P14710607457572497400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P14710607457572497400

namespace A155498

/-- `∑[A104638(n+1)]` -/
def P14710607457572497400.Spec : Prop :=
  ∀ n, P14710607457572497400.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P7656764821816016428

`∑[∑{digits}[A000040(n+1), #%2]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A155498

/-- `∑[∑{digits}[A000040(n+1), #%2]]` -/
def P7656764821816016428.Spec : Prop :=
  ∀ n, (P7656764821816016428.a n : ℤ) = A155498 (n + 1)

theorem P7656764821816016428.correct : P7656764821816016428.Spec := by
  intro n
  simp only [A155498, Nat.add_sub_cancel]

end A155498

/-! ## A155498.P16642444570769784589

`∑[∑{digits}[A000040(n+1), A000035(#)]]`
-/

namespace A155498.P16642444570769784589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => A000035 x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P16642444570769784589

namespace A155498

/-- `∑[∑{digits}[A000040(n+1), A000035(#)]]` -/
def P16642444570769784589.Spec : Prop :=
  ∀ n, P16642444570769784589.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P8677464035985913553

`∑[A196564(A028905(n+1))]`
-/

namespace A155498.P8677464035985913553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028905 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P8677464035985913553

namespace A155498

/-- `∑[A196564(A028905(n+1))]` -/
def P8677464035985913553.Spec : Prop :=
  ∀ n, P8677464035985913553.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P13317692811428176935

`∑[A196564(Δ[A007504(n)])]`
-/

namespace A155498.P13317692811428176935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P13317692811428176935

namespace A155498

/-- `∑[A196564(Δ[A007504(n)])]` -/
def P13317692811428176935.Spec : Prop :=
  ∀ n, P13317692811428176935.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P12822143452809836173

`∑[A196564(record[A051698(n)])]`
-/

namespace A155498.P12822143452809836173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P12822143452809836173

namespace A155498

/-- `∑[A196564(record[A051698(n)])]` -/
def P12822143452809836173.Spec : Prop :=
  ∀ n, P12822143452809836173.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P8371311137097858188

`∑[A196564(A000040(n+1))]`
-/

namespace A155498.P8371311137097858188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P8371311137097858188

namespace A155498

/-- `∑[A196564(A000040(n+1))]` -/
def P8371311137097858188.Spec : Prop :=
  ∀ n, P8371311137097858188.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P1969368381311284050

`∑[A196564(A004087(n+1))]`
-/

namespace A155498.P1969368381311284050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A004087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P1969368381311284050

namespace A155498

/-- `∑[A196564(A004087(n+1))]` -/
def P1969368381311284050.Spec : Prop :=
  ∀ n, P1969368381311284050.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P18344255291922470334

`∑[A196564(A028906(n+1))]`
-/

namespace A155498.P18344255291922470334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A028906 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P18344255291922470334

namespace A155498

/-- `∑[A196564(A028906(n+1))]` -/
def P18344255291922470334.Spec : Prop :=
  ∀ n, P18344255291922470334.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P13295385293195317759

`∑[A196564(A171014(n+1))]`
-/

namespace A155498.P13295385293195317759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171014 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P13295385293195317759

namespace A155498

/-- `∑[A196564(A171014(n+1))]` -/
def P13295385293195317759.Spec : Prop :=
  ∀ n, P13295385293195317759.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P6614361919537055161

`∑[A196564(A171019(n+1))]`
-/

namespace A155498.P6614361919537055161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P6614361919537055161

namespace A155498

/-- `∑[A196564(A171019(n+1))]` -/
def P6614361919537055161.Spec : Prop :=
  ∀ n, P6614361919537055161.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P108742816014027876

`∑[A196564(A171021(n+1))]`
-/

namespace A155498.P108742816014027876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171021 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P108742816014027876

namespace A155498

/-- `∑[A196564(A171021(n+1))]` -/
def P108742816014027876.Spec : Prop :=
  ∀ n, P108742816014027876.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P1468735857584640716

`∑[A196564(A171024(n+1))]`
-/

namespace A155498.P1468735857584640716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A171024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P1468735857584640716

namespace A155498

/-- `∑[A196564(A171024(n+1))]` -/
def P1468735857584640716.Spec : Prop :=
  ∀ n, P1468735857584640716.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P4289654955898540293

`∑[A196564(A008578(n+2))]`
-/

namespace A155498.P4289654955898540293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P4289654955898540293

namespace A155498

/-- `∑[A196564(A008578(n+2))]` -/
def P4289654955898540293.Spec : Prop :=
  ∀ n, P4289654955898540293.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P2742740966117232123

`∑[A196564(record[A039649(n+1)])]`
-/

namespace A155498.P2742740966117232123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P2742740966117232123

namespace A155498

/-- `∑[A196564(record[A039649(n+1)])]` -/
def P2742740966117232123.Spec : Prop :=
  ∀ n, P2742740966117232123.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P1747462246435767949

`∑[A196564(record[A014963(n+2)])]`
-/

namespace A155498.P1747462246435767949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P1747462246435767949

namespace A155498

/-- `∑[A196564(record[A014963(n+2)])]` -/
def P1747462246435767949.Spec : Prop :=
  ∀ n, P1747462246435767949.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P7290849483832352619

`∑[A196564(A101989(n+1))]`
-/

namespace A155498.P7290849483832352619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A101989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P7290849483832352619

namespace A155498

/-- `∑[A196564(A101989(n+1))]` -/
def P7290849483832352619.Spec : Prop :=
  ∀ n, P7290849483832352619.a n = A155498 (n + 1)

end A155498

/-! ## A155498.P1819801566856156283

`∑[A102675(A001750(n+1))]`
-/

namespace A155498.P1819801566856156283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A001750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A155498.P1819801566856156283

namespace A155498

/-- `∑[A102675(A001750(n+1))]` -/
def P1819801566856156283.Spec : Prop :=
  ∀ n, P1819801566856156283.a n = A155498 (n + 1)

end A155498

/-!
# A155499: a(n) = n + (n+1)^(n+2).

The programs for A155499, the canonical program `A155499.P9547186083274687914` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A155499 has offset 0).

The definition of A155499 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+(n+1)^(n+2)` (program `A155499.P9547186083274687914`, by `A155499.P9547186083274687914.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A155499.P9547186083274687914

`n+(n+1)^(n+2)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A155499

/-- `n+(n+1)^(n+2)` -/
def P9547186083274687914.Spec : Prop :=
  ∀ n, (P9547186083274687914.a n : ℤ) = A155499 n

theorem P9547186083274687914.correct : P9547186083274687914.Spec := by
  intro n
  simp only [A155499]

end A155499

/-! ## A155499.P13065298559574909116

`record[(n-1)^n]+n`
-/

namespace A155499.P13065298559574909116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A155499.P13065298559574909116

namespace A155499

/-- `record[(n-1)^n]+n` -/
def P13065298559574909116.Spec : Prop :=
  ∀ n, P13065298559574909116.a n = A155499 n

end A155499

/-! ## A155499.P9158700972653865540

`abs(1-A322406(n+1))`
-/

namespace A155499.P9158700972653865540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A322406 (n + 1)|

end

end A155499.P9158700972653865540

namespace A155499

/-- `abs(1-A322406(n+1))` -/
def P9158700972653865540.Spec : Prop :=
  ∀ n, P9158700972653865540.a n = A155499 n

end A155499

/-! ## A155499.P9106041924458669677

`or(1, A007778(n+1)+n)`
-/

namespace A155499.P9106041924458669677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007778 (n + 1) + (n : ℤ))

end

end A155499.P9106041924458669677

namespace A155499

/-- `or(1, A007778(n+1)+n)` -/
def P9106041924458669677.Spec : Prop :=
  ∀ n, P9106041924458669677.a n = A155499 n

end A155499

/-! ## A155499.P9096955237680864144

`or(1, A065440(n+2)+n)`
-/

namespace A155499.P9096955237680864144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A065440 (n + 2) + (n : ℤ))

end

end A155499.P9096955237680864144

namespace A155499

/-- `or(1, A065440(n+2)+n)` -/
def P9096955237680864144.Spec : Prop :=
  ∀ n, P9096955237680864144.a n = A155499 n

end A155499

/-! ## A155499.P6318519264281055666

`Δ[A152947(n+1)+∑[A007778(n)]]`
-/

namespace A155499.P6318519264281055666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A155499.P6318519264281055666

namespace A155499

/-- `Δ[A152947(n+1)+∑[A007778(n)]]` -/
def P6318519264281055666.Spec : Prop :=
  ∀ n, P6318519264281055666.a n = A155499 n

end A155499

/-! ## A155499.P6909548745491658753

`(A007778(n+1)+n)*A010052(n*n)`
-/

namespace A155499.P6909548745491658753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007778 (n + 1) + (n : ℤ)) * A010052 (n * n)

end

end A155499.P6909548745491658753

namespace A155499

/-- `(A007778(n+1)+n)*A010052(n*n)` -/
def P6909548745491658753.Spec : Prop :=
  ∀ n, P6909548745491658753.a n = A155499 n

end A155499

/-! ## A155499.P12900106770082666760

`gcd(A028310(n)+A007778(n+1), C(2, n+2))`
-/

namespace A155499.P12900106770082666760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n + A007778 (n + 1)) (Nat.choose 2 (n + 2) : ℤ)

end

end A155499.P12900106770082666760

namespace A155499

/-- `gcd(A028310(n)+A007778(n+1), C(2, n+2))` -/
def P12900106770082666760.Spec : Prop :=
  ∀ n, (P12900106770082666760.a n : ℤ) = A155499 n

end A155499

